//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/containers/MemoryClauseIterator.java
//
//  Created by katsura on 14/04/13.
//

#include "IOSClass.h"
#include "com/igormaznitsa/prol/containers/InsideClauseListItem.h"
#include "com/igormaznitsa/prol/containers/KnowledgeBaseInsideClauseList.h"
#include "com/igormaznitsa/prol/containers/MemoryClauseIterator.h"
#include "com/igormaznitsa/prol/data/Term.h"
#include "com/igormaznitsa/prol/data/TermStruct.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/NoSuchElementException.h"

@implementation ComIgormaznitsaProlContainersMemoryClauseIterator

- (id)initWithComIgormaznitsaProlContainersKnowledgeBaseInsideClauseList:(ComIgormaznitsaProlContainersKnowledgeBaseInsideClauseList *)list
                                   withComIgormaznitsaProlDataTermStruct:(ComIgormaznitsaProlDataTermStruct *)template_ {
  if (self = [super init]) {
    predicateList_ = list;
    self->template__ = (ComIgormaznitsaProlDataTermStruct *) check_class_cast([((ComIgormaznitsaProlDataTermStruct *) nil_chk(template_)) makeClone], [ComIgormaznitsaProlDataTermStruct class]);
    lastFound_ = [self findFirstElement];
  }
  return self;
}

- (BOOL)hasNext {
  return lastFound_ != nil;
}

- (ComIgormaznitsaProlDataTermStruct *)getTemplate {
  return template__;
}

- (ComIgormaznitsaProlContainersInsideClauseListItem *)findFirstElement {
  return [((ComIgormaznitsaProlContainersKnowledgeBaseInsideClauseList *) nil_chk(predicateList_)) findDirectWithComIgormaznitsaProlDataTermStruct:template__ withComIgormaznitsaProlContainersInsideClauseListItem:nil];
}

- (ComIgormaznitsaProlDataTermStruct *)next {
  if (lastFound_ == nil) {
    @throw [[JavaUtilNoSuchElementException alloc] init];
  }
  ComIgormaznitsaProlDataTermStruct *result = (ComIgormaznitsaProlDataTermStruct *) check_class_cast([((ComIgormaznitsaProlDataTermStruct *) nil_chk([((ComIgormaznitsaProlContainersInsideClauseListItem *) nil_chk(lastFound_)) getClause])) makeClone], [ComIgormaznitsaProlDataTermStruct class]);
  lastFound_ = [((ComIgormaznitsaProlContainersKnowledgeBaseInsideClauseList *) nil_chk(predicateList_)) findDirectWithComIgormaznitsaProlDataTermStruct:template__ withComIgormaznitsaProlContainersInsideClauseListItem:lastFound_];
  return result;
}

- (void)remove {
  @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:@"Not supported."];
}

- (void)cut {
  lastFound_ = nil;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"ClauseIterator{template=%@}", template__];
}

- (void)copyAllFieldsTo:(ComIgormaznitsaProlContainersMemoryClauseIterator *)other {
  [super copyAllFieldsTo:other];
  other->lastFound_ = lastFound_;
  other->predicateList_ = predicateList_;
  other->template__ = template__;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComIgormaznitsaProlContainersKnowledgeBaseInsideClauseList:withComIgormaznitsaProlDataTermStruct:", "MemoryClauseIterator", NULL, 0x1, NULL },
    { "hasNext", NULL, "Z", 0x1, NULL },
    { "getTemplate", NULL, "Lcom.igormaznitsa.prol.data.TermStruct;", 0x1, NULL },
    { "findFirstElement", NULL, "Lcom.igormaznitsa.prol.containers.InsideClauseListItem;", 0x4, NULL },
    { "next", NULL, "Lcom.igormaznitsa.prol.data.TermStruct;", 0x1, NULL },
    { "remove", NULL, "V", 0x1, NULL },
    { "cut", NULL, "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "predicateList_", NULL, 0x14, "Lcom.igormaznitsa.prol.containers.KnowledgeBaseInsideClauseList;" },
    { "template__", "template", 0x14, "Lcom.igormaznitsa.prol.data.TermStruct;" },
    { "lastFound_", NULL, 0x4, "Lcom.igormaznitsa.prol.containers.InsideClauseListItem;" },
  };
  static J2ObjcClassInfo _ComIgormaznitsaProlContainersMemoryClauseIterator = { "MemoryClauseIterator", "com.igormaznitsa.prol.containers", NULL, 0x0, 8, methods, 3, fields, 0, NULL};
  return &_ComIgormaznitsaProlContainersMemoryClauseIterator;
}

@end