//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/containers/MemoryFactIterator.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlContainersMemoryFactIterator_H_
#define _ComIgormaznitsaProlContainersMemoryFactIterator_H_

@class ComIgormaznitsaProlContainersInsideClauseListItem;
@class ComIgormaznitsaProlContainersKnowledgeBaseInsideClauseList;
@class ComIgormaznitsaProlDataTermStruct;

#import "JreEmulation.h"
#include "com/igormaznitsa/prol/containers/FactIterator.h"
#include "com/igormaznitsa/prol/containers/MemoryClauseIterator.h"

@interface ComIgormaznitsaProlContainersMemoryFactIterator : ComIgormaznitsaProlContainersMemoryClauseIterator < ComIgormaznitsaProlContainersFactIterator > {
}

- (id)initWithComIgormaznitsaProlContainersKnowledgeBaseInsideClauseList:(ComIgormaznitsaProlContainersKnowledgeBaseInsideClauseList *)list
                                   withComIgormaznitsaProlDataTermStruct:(ComIgormaznitsaProlDataTermStruct *)template_;
- (ComIgormaznitsaProlContainersInsideClauseListItem *)findFirstElement;
- (ComIgormaznitsaProlDataTermStruct *)next;
@end

#endif // _ComIgormaznitsaProlContainersMemoryFactIterator_H_
