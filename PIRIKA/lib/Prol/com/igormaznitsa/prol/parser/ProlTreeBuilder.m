//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/parser/ProlTreeBuilder.java
//
//  Created by katsura on 14/04/13.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/igormaznitsa/prol/containers/KnowledgeBase.h"
#include "com/igormaznitsa/prol/containers/OperatorContainer.h"
#include "com/igormaznitsa/prol/data/NumericTerm.h"
#include "com/igormaznitsa/prol/data/Operator.h"
#include "com/igormaznitsa/prol/data/Term.h"
#include "com/igormaznitsa/prol/data/TermList.h"
#include "com/igormaznitsa/prol/data/TermStruct.h"
#include "com/igormaznitsa/prol/data/Var.h"
#include "com/igormaznitsa/prol/exceptions/ParserException.h"
#include "com/igormaznitsa/prol/exceptions/ProlCriticalError.h"
#include "com/igormaznitsa/prol/libraries/PredicateProcessor.h"
#include "com/igormaznitsa/prol/logic/ProlContext.h"
#include "com/igormaznitsa/prol/parser/ProlReader.h"
#include "com/igormaznitsa/prol/parser/ProlTokenizer.h"
#include "com/igormaznitsa/prol/parser/ProlTreeBuilder.h"
#include "java/io/IOException.h"
#include "java/lang/InterruptedException.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"

@implementation ComIgormaznitsaProlParserProlTreeBuilder

+ (BOOL)isEndOperatorWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)operator_
withComIgormaznitsaProlContainersOperatorContainerArray:(IOSObjectArray *)endOperators {
  if (operator_ == nil) {
    return YES;
  }
  if (endOperators == nil) {
    return NO;
  }
  if ([((ComIgormaznitsaProlDataTerm *) nil_chk(operator_)) getTermType] == ComIgormaznitsaProlDataTerm_TYPE_OPERATORS) {
    NSString *operatorName = [operator_ getText];
    for (int li = 0; li < (int) [((IOSObjectArray *) nil_chk(endOperators)) count]; li++) {
      if ([((NSString *) nil_chk([((ComIgormaznitsaProlContainersOperatorContainer *) IOSObjectArray_Get(endOperators, li)) getText])) isEqual:operatorName]) {
        return YES;
      }
    }
  }
  return NO;
}

- (id)initWithComIgormaznitsaProlLogicProlContext:(ComIgormaznitsaProlLogicProlContext *)context {
  if (self = [super init]) {
    variableSet_ = [[JavaUtilHashMap alloc] init];
    self->context_ = context;
    knowledgeBase_ = [((ComIgormaznitsaProlLogicProlContext *) nil_chk(context)) getKnowledgeBase];
    OPERATORS_PHRASE_ = [IOSObjectArray arrayWithObjects:(id[]){ [context getSystemOperatorForNameWithNSString:@"."] } count:1 type:[IOSClass classWithClass:[ComIgormaznitsaProlContainersOperatorContainer class]]];
    OPERATORS_INSIDE_LIST_ = [IOSObjectArray arrayWithObjects:(id[]){ [context getSystemOperatorForNameWithNSString:@","], [context getSystemOperatorForNameWithNSString:@"]"], [context getSystemOperatorForNameWithNSString:@"|"] } count:3 type:[IOSClass classWithClass:[ComIgormaznitsaProlContainersOperatorContainer class]]];
    OPERATORS_END_LIST_ = [IOSObjectArray arrayWithObjects:(id[]){ [context getSystemOperatorForNameWithNSString:@"]"] } count:1 type:[IOSClass classWithClass:[ComIgormaznitsaProlContainersOperatorContainer class]]];
    OPERATORS_INSIDE_STRUCT_ = [IOSObjectArray arrayWithObjects:(id[]){ [context getSystemOperatorForNameWithNSString:@","], [context getSystemOperatorForNameWithNSString:@")"] } count:2 type:[IOSClass classWithClass:[ComIgormaznitsaProlContainersOperatorContainer class]]];
    OPERATORS_SUBBLOCK_ = [IOSObjectArray arrayWithObjects:(id[]){ [context getSystemOperatorForNameWithNSString:@")"] } count:1 type:[IOSClass classWithClass:[ComIgormaznitsaProlContainersOperatorContainer class]]];
  }
  return self;
}

- (ComIgormaznitsaProlDataTerm *)readPhraseAndMakeTreeWithNSString:(NSString *)str {
  @synchronized(self) {
    {
      return [self readPhraseAndMakeTreeWithComIgormaznitsaProlParserProlReader:[[ComIgormaznitsaProlParserProlReader alloc] initWithNSString:str]];
    }
  }
}

- (ComIgormaznitsaProlDataTerm *)readPhraseAndMakeTreeWithComIgormaznitsaProlParserProlTokenizer:(ComIgormaznitsaProlParserProlTokenizer *)tokenizer
                                                         withComIgormaznitsaProlParserProlReader:(ComIgormaznitsaProlParserProlReader *)reader {
  @synchronized(self) {
    {
      [((id<JavaUtilMap>) nil_chk(variableSet_)) clear];
      @try {
        self->tokenizer_ = tokenizer;
        ComIgormaznitsaProlDataTerm *result = [self readBlockWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersOperatorContainerArray:OPERATORS_PHRASE_];
        if (result == nil) {
          return nil;
        }
        ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult *endAtom = [((ComIgormaznitsaProlParserProlTokenizer *) nil_chk(tokenizer)) nextTokenWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersKnowledgeBase:knowledgeBase_];
        if (endAtom == nil || ![((NSString *) nil_chk([endAtom getText])) isEqual:@"."]) {
          @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"End operator is not found" withInt:[((ComIgormaznitsaProlParserProlReader *) nil_chk(reader)) getLineNumber] withInt:[reader getStrPos]];
        }
        return result;
      }
      @finally {
        [variableSet_ clear];
      }
    }
  }
}

- (ComIgormaznitsaProlDataTerm *)readPhraseAndMakeTreeWithComIgormaznitsaProlParserProlReader:(ComIgormaznitsaProlParserProlReader *)reader {
  @synchronized(self) {
    {
      return [self readPhraseAndMakeTreeWithComIgormaznitsaProlParserProlTokenizer:[[ComIgormaznitsaProlParserProlTokenizer alloc] init] withComIgormaznitsaProlParserProlReader:reader];
    }
  }
}

- (ComIgormaznitsaProlDataTermStruct *)readStructWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)functor
                                         withComIgormaznitsaProlParserProlReader:(ComIgormaznitsaProlParserProlReader *)reader {
  JavaUtilArrayList *listOfAtoms = [[JavaUtilArrayList alloc] init];
  while (YES) {
    ComIgormaznitsaProlDataTerm *block = [self readBlockWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersOperatorContainerArray:OPERATORS_INSIDE_STRUCT_];
    ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult *nextAtom = [((ComIgormaznitsaProlParserProlTokenizer *) nil_chk(tokenizer_)) nextTokenWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersKnowledgeBase:knowledgeBase_];
    NSString *nextText = [((ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult *) nil_chk(nextAtom)) getText];
    if ([@"," isEqual:nextText]) {
      if (block == nil) {
        @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"Empty structure element" withInt:[tokenizer_ getLastTokenLineNum] withInt:[tokenizer_ getLastTokenStrPos]];
      }
      else {
        [listOfAtoms addWithId:block];
      }
      continue;
    }
    else if ([@")" isEqual:nextText]) {
      if (block != nil) {
        [listOfAtoms addWithId:block];
      }
      break;
    }
  }
  ComIgormaznitsaProlDataTermStruct *result = [[ComIgormaznitsaProlDataTermStruct alloc] initWithComIgormaznitsaProlDataTerm:functor withComIgormaznitsaProlDataTermArray:[listOfAtoms toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[listOfAtoms size] type:[IOSClass classWithClass:[ComIgormaznitsaProlDataTerm class]]]]];
  [result setPredicateProcessorWithComIgormaznitsaProlLibrariesPredicateProcessor:[((ComIgormaznitsaProlLogicProlContext *) nil_chk(context_)) findProcessorWithComIgormaznitsaProlDataTermStruct:result]];
  return result;
}

- (ComIgormaznitsaProlDataTerm *)readListWithComIgormaznitsaProlParserProlReader:(ComIgormaznitsaProlParserProlReader *)reader {
  ComIgormaznitsaProlDataTermList *leftPart = [ComIgormaznitsaProlDataTermList NULLLIST];
  ComIgormaznitsaProlDataTermList *leftPartFirst = leftPart;
  ComIgormaznitsaProlDataTerm *rightPart = nil;
  BOOL hasSeparator = NO;
  BOOL doRead = YES;
  while (doRead) {
    ComIgormaznitsaProlDataTerm *block = [self readBlockWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersOperatorContainerArray:OPERATORS_INSIDE_LIST_];
    ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult *nextAtom = [((ComIgormaznitsaProlParserProlTokenizer *) nil_chk(tokenizer_)) nextTokenWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersKnowledgeBase:knowledgeBase_];
    NSString *text = [((ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult *) nil_chk(nextAtom)) getText];
    if ([@"]" isEqual:text]) {
      doRead = NO;
      if (block == nil) {
        continue;
      }
    }
    else if ([@"|" isEqual:text]) {
      if (block == nil) {
        @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"There is not any list element" withInt:[tokenizer_ getLastTokenLineNum] withInt:[tokenizer_ getLastTokenStrPos]];
      }
      if ([((ComIgormaznitsaProlDataTermList *) nil_chk(leftPartFirst)) isNullList]) {
        leftPartFirst = [ComIgormaznitsaProlDataTermList appendItemWithComIgormaznitsaProlDataTermList:leftPart withComIgormaznitsaProlDataTerm:block];
        leftPart = leftPartFirst;
      }
      else {
        leftPart = [ComIgormaznitsaProlDataTermList appendItemWithComIgormaznitsaProlDataTermList:leftPart withComIgormaznitsaProlDataTerm:block];
      }
      hasSeparator = YES;
      rightPart = [self readBlockWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersOperatorContainerArray:OPERATORS_END_LIST_];
      nextAtom = [tokenizer_ nextTokenWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersKnowledgeBase:knowledgeBase_];
      if (![((NSString *) nil_chk([((ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult *) nil_chk(nextAtom)) getText])) isEqual:@"]"]) {
        @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"Wrong end of the list tail" withInt:[tokenizer_ getLastTokenLineNum] withInt:[tokenizer_ getLastTokenStrPos]];
      }
      break;
    }
    else if ([@"," isEqual:text]) {
      if (block == nil) {
        @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"List element not found" withInt:[tokenizer_ getLastTokenLineNum] withInt:[tokenizer_ getLastTokenStrPos]];
      }
    }
    else {
      @throw [[ComIgormaznitsaProlExceptionsProlCriticalError alloc] initWithNSString:@"Nonprocessd state at list definition"];
    }
    if ([((ComIgormaznitsaProlDataTermList *) nil_chk(leftPartFirst)) isNullList]) {
      leftPartFirst = [ComIgormaznitsaProlDataTermList appendItemWithComIgormaznitsaProlDataTermList:leftPart withComIgormaznitsaProlDataTerm:block];
      leftPart = leftPartFirst;
    }
    else {
      leftPart = [ComIgormaznitsaProlDataTermList appendItemWithComIgormaznitsaProlDataTermList:leftPart withComIgormaznitsaProlDataTerm:block];
    }
  }
  if (hasSeparator) {
    if (leftPart == nil) {
      leftPart = [ComIgormaznitsaProlDataTermList NULLLIST];
    }
    if (rightPart == nil) {
      @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"There is not any term as the tail at the list" withInt:[((ComIgormaznitsaProlParserProlTokenizer *) nil_chk(tokenizer_)) getLastTokenLineNum] withInt:[tokenizer_ getLastTokenStrPos]];
    }
    [((ComIgormaznitsaProlDataTermList *) nil_chk(leftPartFirst)) replaceLastElementWithComIgormaznitsaProlDataTerm:rightPart];
  }
  return leftPartFirst;
}

- (ComIgormaznitsaProlDataTerm *)readBlockWithComIgormaznitsaProlParserProlReader:(ComIgormaznitsaProlParserProlReader *)reader
                          withComIgormaznitsaProlContainersOperatorContainerArray:(IOSObjectArray *)endOperators {
  ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *currentTreeItem = nil;
  while (YES) {
    ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult *readAtomContainer = [((ComIgormaznitsaProlParserProlTokenizer *) nil_chk(tokenizer_)) nextTokenWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersKnowledgeBase:knowledgeBase_];
    BOOL atBrakes = NO;
    if (readAtomContainer == nil) {
      if (currentTreeItem == nil) {
        return nil;
      }
      else {
        @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"Not-ended phrase" withInt:[tokenizer_ getLastTokenLineNum] withInt:[tokenizer_ getLastTokenStrPos]];
      }
    }
    ComIgormaznitsaProlDataTerm *readAtom = [((ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult *) nil_chk(readAtomContainer)) getTerm];
    if ([ComIgormaznitsaProlParserProlTreeBuilder isEndOperatorWithComIgormaznitsaProlDataTerm:readAtom withComIgormaznitsaProlContainersOperatorContainerArray:endOperators]) {
      [tokenizer_ pushTermBackWithComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult:readAtomContainer];
      break;
    }
    int readAtomPriority = 0;
    if ([((ComIgormaznitsaProlDataTerm *) nil_chk(readAtom)) getTermType] == ComIgormaznitsaProlDataTerm_TYPE_OPERATORS) {
      ComIgormaznitsaProlDataOperator *readOperator = [((ComIgormaznitsaProlContainersOperatorContainer *) check_class_cast(readAtom, [ComIgormaznitsaProlContainersOperatorContainer class])) getOperatorIfSingle];
      if (readOperator == nil) {
        ComIgormaznitsaProlContainersOperatorContainer *readOperators = (ComIgormaznitsaProlContainersOperatorContainer *) check_class_cast(readAtom, [ComIgormaznitsaProlContainersOperatorContainer class]);
        BOOL leftPresented = NO;
        if (currentTreeItem != nil) {
          if ([currentTreeItem getItemType] != ComIgormaznitsaProlDataTerm_TYPE_OPERATOR) {
            leftPresented = YES;
          }
          else {
            if ([currentTreeItem getRightBranch] != nil) {
              leftPresented = YES;
            }
          }
        }
        BOOL rightPresented = ![ComIgormaznitsaProlParserProlTreeBuilder isEndOperatorWithComIgormaznitsaProlDataTerm:[((ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult *) nil_chk([tokenizer_ peekTokenWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersKnowledgeBase:knowledgeBase_])) getTerm] withComIgormaznitsaProlContainersOperatorContainerArray:endOperators];
        readAtomContainer = nil;
        readAtom = [readOperators getCompatibleOperatorWithBoolean:leftPresented withBoolean:rightPresented];
        if (readAtom == nil) {
          @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"Incompatible operator type" withInt:[tokenizer_ getLastTokenLineNum] withInt:[tokenizer_ getLastTokenStrPos]];
        }
        readAtomPriority = [((ComIgormaznitsaProlDataTerm *) nil_chk(readAtom)) getPriority];
      }
      else {
        readAtomContainer = nil;
        readAtom = readOperator;
        NSString *operatorText = [readOperator getText];
        if ([((NSString *) nil_chk(operatorText)) length] == 1) {
          if ([@"[" isEqual:operatorText]) {
            readAtom = [self readListWithComIgormaznitsaProlParserProlReader:reader];
            readAtomPriority = 0;
          }
          else if ([@"(" isEqual:operatorText]) {
            atBrakes = YES;
            readAtomContainer = nil;
            readAtom = [self readBlockWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersOperatorContainerArray:OPERATORS_SUBBLOCK_];
            readAtomPriority = 0;
            ComIgormaznitsaProlDataTerm *closingAtom = [((ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult *) nil_chk([tokenizer_ nextTokenWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersKnowledgeBase:knowledgeBase_])) getTerm];
            if (closingAtom == nil || ![((NSString *) nil_chk([closingAtom getText])) isEqual:@")"]) {
              @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"Non-closed brakes" withInt:[((ComIgormaznitsaProlParserProlReader *) nil_chk(reader)) getLineNumber] withInt:[reader getStrPos]];
            }
          }
          else {
            readAtomPriority = [readOperator getPriority];
          }
        }
        else {
          readAtomPriority = [readOperator getPriority];
        }
      }
    }
    else {
      ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult *nextToken = [tokenizer_ nextTokenWithComIgormaznitsaProlParserProlReader:reader withComIgormaznitsaProlContainersKnowledgeBase:knowledgeBase_];
      if (nextToken != nil && [((NSString *) nil_chk([nextToken getText])) isEqual:@"("]) {
        if ([readAtom getTermType] == ComIgormaznitsaProlDataTerm_TYPE_ATOM) {
          readAtom = [self readStructWithComIgormaznitsaProlDataTerm:readAtom withComIgormaznitsaProlParserProlReader:reader];
        }
        else {
          [tokenizer_ pushTermBackWithComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult:nextToken];
          @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"You must have an atom as the structure functor" withInt:[tokenizer_ getLastTokenLineNum] withInt:[tokenizer_ getLastTokenStrPos]];
        }
      }
      else {
        [tokenizer_ pushTermBackWithComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult:nextToken];
        if ([readAtomContainer getState] == ComIgormaznitsaProlParserProlTokenizer_ProlTokenizerResult_STATE_ATOM && [((ComIgormaznitsaProlLogicProlContext *) nil_chk(context_)) hasPredicateAtLibraryForSignatureWithNSString:[NSString stringWithFormat:@"%@/0", [readAtom getText]]]) {
          readAtomContainer = nil;
          readAtom = [[ComIgormaznitsaProlDataTermStruct alloc] initWithComIgormaznitsaProlDataTerm:readAtom];
        }
      }
    }
    if ([((ComIgormaznitsaProlDataTerm *) nil_chk(readAtom)) getTermType] == ComIgormaznitsaProlDataTerm_TYPE_VAR) {
      ComIgormaznitsaProlDataVar *var = (ComIgormaznitsaProlDataVar *) check_class_cast(readAtom, [ComIgormaznitsaProlDataVar class]);
      if (![var isAnonymous]) {
        ComIgormaznitsaProlDataVar *cachedVar = [((id<JavaUtilMap>) nil_chk(variableSet_)) getWithId:[var getText]];
        if (cachedVar == nil) {
          (void) [variableSet_ putWithId:[var getText] withId:var];
        }
        else {
          readAtom = cachedVar;
        }
      }
    }
    ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *readAtomTreeItem = [[ComIgormaznitsaProlParserProlTreeBuilder_TreeItem alloc] initWithComIgormaznitsaProlParserProlTreeBuilder:self withComIgormaznitsaProlDataTerm:readAtom withBoolean:atBrakes withInt:[tokenizer_ getLastTokenLineNum] withInt:[tokenizer_ getLastTokenStrPos]];
    if (currentTreeItem == nil) {
      currentTreeItem = readAtomTreeItem;
    }
    else {
      if ([currentTreeItem getItemType] == ComIgormaznitsaProlDataTerm_TYPE_OPERATOR) {
        if ([currentTreeItem getPriority] <= readAtomPriority) {
          ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *foundItem = [currentTreeItem findFirstNodeWithSuchOrLowerPriorityWithInt:readAtomPriority];
          if ([((ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *) nil_chk(foundItem)) getPriority] < readAtomPriority) {
            currentTreeItem = [foundItem makeAsOwnerWithLeftBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:readAtomTreeItem];
          }
          else if ([foundItem getPriority] > readAtomPriority) {
            currentTreeItem = [foundItem makeAsRightBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:readAtomTreeItem];
          }
          else {
            switch ([foundItem getOperatorType]) {
              case ComIgormaznitsaProlDataOperator_OPTYPE_XF:
              case ComIgormaznitsaProlDataOperator_OPTYPE_YF:
              case ComIgormaznitsaProlDataOperator_OPTYPE_FX:
              case ComIgormaznitsaProlDataOperator_OPTYPE_XFX:
              case ComIgormaznitsaProlDataOperator_OPTYPE_YFX:
              {
                currentTreeItem = [foundItem makeAsOwnerWithLeftBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:readAtomTreeItem];
              }
              break;
              case ComIgormaznitsaProlDataOperator_OPTYPE_FY:
              case ComIgormaznitsaProlDataOperator_OPTYPE_XFY:
              {
                currentTreeItem = [foundItem makeAsRightBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:readAtomTreeItem];
              }
              break;
              default:
              @throw [[ComIgormaznitsaProlExceptionsProlCriticalError alloc] initWithNSString:@"Unknown operator type"];
            }
          }
        }
        else if ([currentTreeItem getPriority] > readAtomPriority) {
          if ([readAtomTreeItem getItemType] != ComIgormaznitsaProlDataTerm_TYPE_OPERATOR) {
            if ([currentTreeItem getRightBranch] != nil) {
              @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"There is not any operator before the atom" withInt:[tokenizer_ getLastTokenLineNum] withInt:[tokenizer_ getLastTokenStrPos]];
            }
          }
          currentTreeItem = [currentTreeItem makeAsRightBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:readAtomTreeItem];
        }
      }
      else {
        if (currentTreeItem != nil && [currentTreeItem getItemType] != ComIgormaznitsaProlDataTerm_TYPE_OPERATOR && [readAtomTreeItem getItemType] != ComIgormaznitsaProlDataTerm_TYPE_OPERATOR) {
          @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"There must be an operator between atoms or structures" withInt:[tokenizer_ getLastTokenLineNum] withInt:[tokenizer_ getLastTokenStrPos]];
        }
        currentTreeItem = [currentTreeItem makeAsOwnerWithLeftBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:readAtomTreeItem];
      }
    }
  }
  if (currentTreeItem == nil) {
    return nil;
  }
  else {
    return [((ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *) nil_chk([currentTreeItem findRoot])) convertTreeItemIntoTerm];
  }
}

- (void)copyAllFieldsTo:(ComIgormaznitsaProlParserProlTreeBuilder *)other {
  [super copyAllFieldsTo:other];
  other->OPERATORS_END_LIST_ = OPERATORS_END_LIST_;
  other->OPERATORS_INSIDE_LIST_ = OPERATORS_INSIDE_LIST_;
  other->OPERATORS_INSIDE_STRUCT_ = OPERATORS_INSIDE_STRUCT_;
  other->OPERATORS_PHRASE_ = OPERATORS_PHRASE_;
  other->OPERATORS_SUBBLOCK_ = OPERATORS_SUBBLOCK_;
  other->context_ = context_;
  other->knowledgeBase_ = knowledgeBase_;
  other->tokenizer_ = tokenizer_;
  other->variableSet_ = variableSet_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "isEndOperatorWithComIgormaznitsaProlDataTerm:withComIgormaznitsaProlContainersOperatorContainerArray:", "isEndOperator", "Z", 0x1a, NULL },
    { "initWithComIgormaznitsaProlLogicProlContext:", "ProlTreeBuilder", NULL, 0x1, NULL },
    { "readPhraseAndMakeTreeWithNSString:", "readPhraseAndMakeTree", "Lcom.igormaznitsa.prol.data.Term;", 0x31, "Ljava.io.IOException;Ljava.lang.InterruptedException;" },
    { "readPhraseAndMakeTreeWithComIgormaznitsaProlParserProlTokenizer:withComIgormaznitsaProlParserProlReader:", "readPhraseAndMakeTree", "Lcom.igormaznitsa.prol.data.Term;", 0x31, "Ljava.io.IOException;" },
    { "readPhraseAndMakeTreeWithComIgormaznitsaProlParserProlReader:", "readPhraseAndMakeTree", "Lcom.igormaznitsa.prol.data.Term;", 0x31, "Ljava.io.IOException;Ljava.lang.InterruptedException;" },
    { "readStructWithComIgormaznitsaProlDataTerm:withComIgormaznitsaProlParserProlReader:", "readStruct", "Lcom.igormaznitsa.prol.data.TermStruct;", 0x12, "Ljava.io.IOException;" },
    { "readListWithComIgormaznitsaProlParserProlReader:", "readList", "Lcom.igormaznitsa.prol.data.Term;", 0x12, "Ljava.io.IOException;" },
    { "readBlockWithComIgormaznitsaProlParserProlReader:withComIgormaznitsaProlContainersOperatorContainerArray:", "readBlock", "Lcom.igormaznitsa.prol.data.Term;", 0x12, "Ljava.io.IOException;" },
  };
  static J2ObjcFieldInfo fields[] = {
    { "OPERATORS_PHRASE_", NULL, 0x12, "[Lcom.igormaznitsa.prol.containers.OperatorContainer;" },
    { "OPERATORS_INSIDE_LIST_", NULL, 0x12, "[Lcom.igormaznitsa.prol.containers.OperatorContainer;" },
    { "OPERATORS_END_LIST_", NULL, 0x12, "[Lcom.igormaznitsa.prol.containers.OperatorContainer;" },
    { "OPERATORS_INSIDE_STRUCT_", NULL, 0x12, "[Lcom.igormaznitsa.prol.containers.OperatorContainer;" },
    { "OPERATORS_SUBBLOCK_", NULL, 0x12, "[Lcom.igormaznitsa.prol.containers.OperatorContainer;" },
    { "variableSet_", NULL, 0x12, "Ljava.util.Map;" },
    { "tokenizer_", NULL, 0x2, "Lcom.igormaznitsa.prol.parser.ProlTokenizer;" },
    { "context_", NULL, 0x12, "Lcom.igormaznitsa.prol.logic.ProlContext;" },
    { "knowledgeBase_", NULL, 0x12, "Lcom.igormaznitsa.prol.containers.KnowledgeBase;" },
  };
  static J2ObjcClassInfo _ComIgormaznitsaProlParserProlTreeBuilder = { "ProlTreeBuilder", "com.igormaznitsa.prol.parser", NULL, 0x11, 8, methods, 9, fields, 0, NULL};
  return &_ComIgormaznitsaProlParserProlTreeBuilder;
}

@end
@implementation ComIgormaznitsaProlParserProlTreeBuilder_TreeItem

- (id)initWithComIgormaznitsaProlParserProlTreeBuilder:(ComIgormaznitsaProlParserProlTreeBuilder *)builder
                       withComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)term
                                           withBoolean:(BOOL)atBrakes
                                               withInt:(int)lineNum
                                               withInt:(int)strPos {
  if (self = [super init]) {
    savedterm_ = term;
    self->builder_ = builder;
    self->strPos_ = strPos;
    self->lineNum_ = lineNum;
    self->atBrakes_ = atBrakes;
  }
  return self;
}

- (int)getPriority {
  if (atBrakes_) {
    return 0;
  }
  return [((ComIgormaznitsaProlDataTerm *) nil_chk(savedterm_)) getPriority];
}

- (void)setRightBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:(ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)item {
  rightBranch_ = item;
  if (item != nil) {
    item->owner_ = self;
  }
}

- (ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)makeAsRightBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:(ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)item {
  ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *currentSubbranch = rightBranch_;
  [self setRightBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:item];
  [((ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *) nil_chk(item)) setLeftBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:currentSubbranch];
  if ([item getItemType] == ComIgormaznitsaProlDataTerm_TYPE_OPERATOR) {
    return [item getPriority] == 0 ? self : item;
  }
  return self;
}

- (ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)makeAsOwnerWithLeftBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:(ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)item {
  [self replaceForOwnerWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:item];
  [((ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *) nil_chk(item)) setLeftBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:self];
  return item;
}

- (ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)getRightBranch {
  return rightBranch_;
}

- (void)setLeftBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:(ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)item {
  leftBranch_ = item;
  if (item != nil) {
    item->owner_ = self;
  }
}

- (ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)getLeftBranch {
  return leftBranch_;
}

- (int)getItemType {
  return [((ComIgormaznitsaProlDataTerm *) nil_chk(savedterm_)) getTermType];
}

- (ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)findRoot {
  if (owner_ == nil) {
    return self;
  }
  return [((ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *) nil_chk(owner_)) findRoot];
}

- (ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)findFirstNodeWithSuchOrLowerPriorityWithInt:(int)priority {
  ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *result = nil;
  if ([self getPriority] >= priority || owner_ == nil) {
    result = self;
  }
  else {
    result = [owner_ findFirstNodeWithSuchOrLowerPriorityWithInt:priority];
  }
  return result;
}

- (void)replaceForOwnerWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:(ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)newItem {
  if (owner_ == nil) {
    ((ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *) nil_chk(newItem))->owner_ = nil;
    return;
  }
  if ([self isEqual:[((ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *) nil_chk(owner_)) getLeftBranch]]) {
    [owner_ setLeftBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:newItem];
  }
  else {
    [owner_ setRightBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:newItem];
  }
}

- (int)getOperatorType {
  return [((ComIgormaznitsaProlDataOperator *) nil_chk(((ComIgormaznitsaProlDataOperator *) check_class_cast(savedterm_, [ComIgormaznitsaProlDataOperator class])))) getOperatorType];
}

- (BOOL)validate {
  if ([((ComIgormaznitsaProlDataTerm *) nil_chk(savedterm_)) getTermType] == ComIgormaznitsaProlDataTerm_TYPE_OPERATOR) {
    int priority = [self getPriority];
    switch ([((ComIgormaznitsaProlDataOperator *) check_class_cast(savedterm_, [ComIgormaznitsaProlDataOperator class])) getOperatorType]) {
      case ComIgormaznitsaProlDataOperator_OPTYPE_FX:
      {
        return leftBranch_ == nil && (rightBranch_ != nil && [rightBranch_ getPriority] < priority);
      }
      case ComIgormaznitsaProlDataOperator_OPTYPE_FY:
      {
        return leftBranch_ == nil && (rightBranch_ != nil && [rightBranch_ getPriority] <= priority);
      }
      case ComIgormaznitsaProlDataOperator_OPTYPE_YF:
      {
        return (leftBranch_ != nil && [leftBranch_ getPriority] <= priority) && rightBranch_ == nil;
      }
      case ComIgormaznitsaProlDataOperator_OPTYPE_XF:
      {
        return (leftBranch_ != nil && [leftBranch_ getPriority] < priority) && rightBranch_ == nil;
      }
      case ComIgormaznitsaProlDataOperator_OPTYPE_XFX:
      {
        return (leftBranch_ != nil && [leftBranch_ getPriority] < priority) && (rightBranch_ != nil && [rightBranch_ getPriority] < priority);
      }
      case ComIgormaznitsaProlDataOperator_OPTYPE_XFY:
      {
        return (leftBranch_ != nil && [leftBranch_ getPriority] < priority) && (rightBranch_ != nil && [rightBranch_ getPriority] <= priority);
      }
      case ComIgormaznitsaProlDataOperator_OPTYPE_YFX:
      {
        return (leftBranch_ != nil && [leftBranch_ getPriority] <= priority) && (rightBranch_ != nil && [rightBranch_ getPriority] < priority);
      }
      default:
      @throw [[ComIgormaznitsaProlExceptionsProlCriticalError alloc] initWithNSString:@"Unknown operator type"];
    }
  }
  else {
    return leftBranch_ == nil && rightBranch_ == nil;
  }
}

- (NSString *)description {
  return [((ComIgormaznitsaProlDataTerm *) nil_chk(savedterm_)) description];
}

- (ComIgormaznitsaProlDataTerm *)convertTreeItemIntoTerm {
  ComIgormaznitsaProlDataTerm *result = nil;
  switch ([((ComIgormaznitsaProlDataTerm *) nil_chk(savedterm_)) getTermType]) {
    case ComIgormaznitsaProlDataTerm_TYPE_OPERATOR:
    {
      ComIgormaznitsaProlDataTermStruct *operatorStruct = nil;
      if (![self validate]) {
        @throw [[ComIgormaznitsaProlExceptionsParserException alloc] initWithNSString:@"Wrong operator" withInt:lineNum_ withInt:strPos_];
      }
      ComIgormaznitsaProlDataTerm *left = leftBranch_ != nil ? [leftBranch_ convertTreeItemIntoTerm] : nil;
      ComIgormaznitsaProlDataTerm *right = rightBranch_ != nil ? [rightBranch_ convertTreeItemIntoTerm] : nil;
      if (left == nil && right == nil) {
        @throw [[ComIgormaznitsaProlExceptionsProlCriticalError alloc] initWithNSString:@"Operator without operands"];
      }
      if ([@"-" isEqual:[savedterm_ getText]] && left == nil) {
        if ([right getTermType] == ComIgormaznitsaProlDataTerm_TYPE_ATOM && [right conformsToProtocol: @protocol(ComIgormaznitsaProlDataNumericTerm)]) {
          result = (ComIgormaznitsaProlDataTerm *) check_class_cast([((id<ComIgormaznitsaProlDataNumericTerm>) check_protocol_cast(right, @protocol(ComIgormaznitsaProlDataNumericTerm))) neg], [ComIgormaznitsaProlDataTerm class]);
          break;
        }
      }
      if (left != nil) {
        if (right == nil) {
          operatorStruct = [[ComIgormaznitsaProlDataTermStruct alloc] initWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataOperator *) check_class_cast(savedterm_, [ComIgormaznitsaProlDataOperator class]) withComIgormaznitsaProlDataTermArray:[IOSObjectArray arrayWithObjects:(id[]){ left } count:1 type:[IOSClass classWithClass:[ComIgormaznitsaProlDataTerm class]]]];
        }
        else {
          operatorStruct = [[ComIgormaznitsaProlDataTermStruct alloc] initWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataOperator *) check_class_cast(savedterm_, [ComIgormaznitsaProlDataOperator class]) withComIgormaznitsaProlDataTermArray:[IOSObjectArray arrayWithObjects:(id[]){ left, right } count:2 type:[IOSClass classWithClass:[ComIgormaznitsaProlDataTerm class]]]];
        }
      }
      else {
        operatorStruct = [[ComIgormaznitsaProlDataTermStruct alloc] initWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataOperator *) check_class_cast(savedterm_, [ComIgormaznitsaProlDataOperator class]) withComIgormaznitsaProlDataTermArray:[IOSObjectArray arrayWithObjects:(id[]){ right } count:1 type:[IOSClass classWithClass:[ComIgormaznitsaProlDataTerm class]]]];
      }
      [((ComIgormaznitsaProlDataTermStruct *) nil_chk(operatorStruct)) setPredicateProcessorWithComIgormaznitsaProlLibrariesPredicateProcessor:[((ComIgormaznitsaProlLogicProlContext *) nil_chk(((ComIgormaznitsaProlParserProlTreeBuilder *) nil_chk(builder_))->context_)) findProcessorWithComIgormaznitsaProlDataTermStruct:operatorStruct]];
      result = operatorStruct;
    }
    break;
    case ComIgormaznitsaProlDataTerm_TYPE_STRUCT:
    {
      ComIgormaznitsaProlDataTermStruct *struct_ = (ComIgormaznitsaProlDataTermStruct *) check_class_cast(savedterm_, [ComIgormaznitsaProlDataTermStruct class]);
      [struct_ setPredicateProcessorWithComIgormaznitsaProlLibrariesPredicateProcessor:[((ComIgormaznitsaProlLogicProlContext *) nil_chk(((ComIgormaznitsaProlParserProlTreeBuilder *) nil_chk(builder_))->context_)) findProcessorWithComIgormaznitsaProlDataTermStruct:struct_]];
      result = savedterm_;
    }
    break;
    default:
    {
      result = savedterm_;
    }
    break;
  }
  return result;
}

- (void)copyAllFieldsTo:(ComIgormaznitsaProlParserProlTreeBuilder_TreeItem *)other {
  [super copyAllFieldsTo:other];
  other->atBrakes_ = atBrakes_;
  other->builder_ = builder_;
  other->leftBranch_ = leftBranch_;
  other->lineNum_ = lineNum_;
  other->owner_ = owner_;
  other->rightBranch_ = rightBranch_;
  other->savedterm_ = savedterm_;
  other->strPos_ = strPos_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComIgormaznitsaProlParserProlTreeBuilder:withComIgormaznitsaProlDataTerm:withBoolean:withInt:withInt:", "TreeItem", NULL, 0x2, NULL },
    { "getPriority", NULL, "I", 0x12, NULL },
    { "setRightBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:", "setRightBranch", "V", 0x12, NULL },
    { "makeAsRightBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:", "makeAsRightBranch", "Lcom.igormaznitsa.prol.parser.ProlTreeBuilder$TreeItem;", 0x12, NULL },
    { "makeAsOwnerWithLeftBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:", "makeAsOwnerWithLeftBranch", "Lcom.igormaznitsa.prol.parser.ProlTreeBuilder$TreeItem;", 0x12, NULL },
    { "getRightBranch", NULL, "Lcom.igormaznitsa.prol.parser.ProlTreeBuilder$TreeItem;", 0x12, NULL },
    { "setLeftBranchWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:", "setLeftBranch", "V", 0x12, NULL },
    { "getLeftBranch", NULL, "Lcom.igormaznitsa.prol.parser.ProlTreeBuilder$TreeItem;", 0x12, NULL },
    { "getItemType", NULL, "I", 0x12, NULL },
    { "findRoot", NULL, "Lcom.igormaznitsa.prol.parser.ProlTreeBuilder$TreeItem;", 0x12, NULL },
    { "findFirstNodeWithSuchOrLowerPriorityWithInt:", "findFirstNodeWithSuchOrLowerPriority", "Lcom.igormaznitsa.prol.parser.ProlTreeBuilder$TreeItem;", 0x12, NULL },
    { "replaceForOwnerWithComIgormaznitsaProlParserProlTreeBuilder_TreeItem:", "replaceForOwner", "V", 0x12, NULL },
    { "getOperatorType", NULL, "I", 0x12, NULL },
    { "validate", NULL, "Z", 0x12, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "convertTreeItemIntoTerm", NULL, "Lcom.igormaznitsa.prol.data.Term;", 0x12, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "builder_", NULL, 0x12, "Lcom.igormaznitsa.prol.parser.ProlTreeBuilder;" },
    { "savedterm_", NULL, 0x12, "Lcom.igormaznitsa.prol.data.Term;" },
    { "leftBranch_", NULL, 0x2, "Lcom.igormaznitsa.prol.parser.ProlTreeBuilder$TreeItem;" },
    { "rightBranch_", NULL, 0x2, "Lcom.igormaznitsa.prol.parser.ProlTreeBuilder$TreeItem;" },
    { "owner_", NULL, 0x2, "Lcom.igormaznitsa.prol.parser.ProlTreeBuilder$TreeItem;" },
    { "strPos_", NULL, 0x12, "I" },
    { "lineNum_", NULL, 0x12, "I" },
    { "atBrakes_", NULL, 0x12, "Z" },
  };
  static J2ObjcClassInfo _ComIgormaznitsaProlParserProlTreeBuilder_TreeItem = { "TreeItem", "com.igormaznitsa.prol.parser", "ProlTreeBuilder", 0x1a, 16, methods, 8, fields, 0, NULL};
  return &_ComIgormaznitsaProlParserProlTreeBuilder_TreeItem;
}

@end
