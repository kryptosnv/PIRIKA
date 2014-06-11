//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/katsura/Documents/objective-c/PIRIKA/PIRIKA/java/com/katsura/prolog/JavaArgumentTree.java
//
//  Created by katsura on 14/06/11.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "JavaArgumentTree.h"
#include "ParserException.h"
#include "ProlCriticalError.h"
#include "ProlInstantiationErrorException.h"
#include "ProlMain.h"
#include "TreeNode.h"
#include "java/lang/Boolean.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@implementation ComKatsuraPrologJavaArgumentTree

- (void)init__WithNSString:(NSString *)LMAPath
              withNSString:(NSString *)truthvaluePath
           withJavaUtilMap:(id<JavaUtilMap>)userMap {
  self->prol_ = [IOSObjectArray arrayWithLength:[((id<JavaUtilMap>) nil_chk(userMap)) size] type:[IOSClass classWithClass:[ComKatsuraPrologProlMain class]]];
  id<JavaUtilIterator> it = [((id<JavaUtilSet>) nil_chk([userMap keySet])) iterator];
  for (int i = 0; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
    NSString *userName = [it next];
    NSString *filepath = [userMap getWithId:userName];
    (void) IOSObjectArray_Set(self->prol_, i, [[ComKatsuraPrologProlMain alloc] initWithNSString:userName]);
    if ([((JavaLangBoolean *) nil_chk([((ComKatsuraPrologProlMain *) IOSObjectArray_Get(self->prol_, i)) init__WithNSString:LMAPath withNSString:truthvaluePath withNSString:filepath])) booleanValue]) {
      i++;
    }
  }
}

- (id<JavaUtilList>)calculateWithNSString:(NSString *)subject {
  id<JavaUtilMap> demo = [[JavaUtilHashMap alloc] init];
  for (int i = 0; i < (int) [((IOSObjectArray *) nil_chk(prol_)) count]; i++) {
    ComKatsuraPrologProlMain *prolMain = IOSObjectArray_Get(self->prol_, i);
    NSString *demoString = [((ComKatsuraPrologProlMain *) nil_chk(prolMain)) getArgumentWithNSString:subject];
    if ([((NSString *) nil_chk(demoString)) isEqual:@"[]"]) {
      continue;
    }
    NSString *s = [demoString substring:2 endIndex:[demoString length] - 2];
    IOSObjectArray *demoList = [((NSString *) nil_chk(s)) split:@"\\],\\[" limit:0];
    for (int k = 0; k < (int) [((IOSObjectArray *) nil_chk(demoList)) count]; k++) {
      NSString *str = [NSString stringWithString:[NSString stringWithFormat:@"[%@]", IOSObjectArray_Get(demoList, k)]];
      if (![demo containsKeyWithId:str]) {
        (void) [demo putWithId:str withId:[prolMain getName]];
      }
    }
  }
  tree_ = [IOSObjectArray arrayWithLength:[demo size] type:[IOSClass classWithClass:[ComKatsuraPrologTreeNode class]]];
  id<JavaUtilIterator> it = [((id<JavaUtilSet>) nil_chk([demo keySet])) iterator];
  for (int i = 0; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; i++) {
    id<JavaUtilList> proList = [[JavaUtilLinkedList alloc] init];
    NSString *demoString = [it next];
    NSString *userName = [demo getWithId:demoString];
    (void) IOSObjectArray_Set(tree_, i, [[ComKatsuraPrologTreeNode alloc] initWithComKatsuraPrologTreeNode:nil withNSString:userName withInt:0 withNSString:demoString]);
    [proList addWithId:demoString];
    [((ComKatsuraPrologTreeNode *) IOSObjectArray_Get(tree_, i)) nextArgumentWithJavaUtilList:proList withComKatsuraPrologProlMainArray:self->prol_];
  }
  id<JavaUtilList> resultList = [[JavaUtilArrayList alloc] init];
  for (int i = 0; i < (int) [tree_ count]; i++) {
    (void) [((ComKatsuraPrologTreeNode *) IOSObjectArray_Get(tree_, i)) insertArgumentWithNameWithJavaUtilList:resultList];
  }
  return resultList;
}

- (id)init {
  return [super init];
}

- (void)copyAllFieldsTo:(ComKatsuraPrologJavaArgumentTree *)other {
  [super copyAllFieldsTo:other];
  other->prol_ = prol_;
  other->tree_ = tree_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init__WithNSString:withNSString:withJavaUtilMap:", "init", "V", 0x1, NULL },
    { "calculateWithNSString:", "calculate", "Ljava.util.List;", 0x1, "Lcom.igormaznitsa.prol.exceptions.ProlCriticalError;Lcom.igormaznitsa.prol.exceptions.ParserException;Lcom.igormaznitsa.prol.exceptions.ProlInstantiationErrorException;" },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "prol_", NULL, 0x4, "[Lcom.katsura.prolog.ProlMain;" },
    { "tree_", NULL, 0x4, "[Lcom.katsura.prolog.TreeNode;" },
  };
  static J2ObjcClassInfo _ComKatsuraPrologJavaArgumentTree = { "JavaArgumentTree", "com.katsura.prolog", NULL, 0x1, 3, methods, 2, fields, 0, NULL};
  return &_ComKatsuraPrologJavaArgumentTree;
}

@end
