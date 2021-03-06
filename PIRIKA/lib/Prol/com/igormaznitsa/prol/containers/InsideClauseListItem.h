//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/containers/InsideClauseListItem.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlContainersInsideClauseListItem_H_
#define _ComIgormaznitsaProlContainersInsideClauseListItem_H_

@class ComIgormaznitsaProlDataTerm;
@class ComIgormaznitsaProlDataTermStruct;

#import "JreEmulation.h"

@interface ComIgormaznitsaProlContainersInsideClauseListItem : NSObject {
 @public
  ComIgormaznitsaProlContainersInsideClauseListItem *previous_;
  ComIgormaznitsaProlContainersInsideClauseListItem *next_;
  ComIgormaznitsaProlDataTermStruct *clause_;
  ComIgormaznitsaProlDataTerm *keyTerm_;
  BOOL fact_;
}

- (ComIgormaznitsaProlDataTerm *)getKeyTerm;
- (ComIgormaznitsaProlDataTermStruct *)getClause;
- (id)initWithComIgormaznitsaProlContainersInsideClauseListItem:(ComIgormaznitsaProlContainersInsideClauseListItem *)prev
          withComIgormaznitsaProlContainersInsideClauseListItem:(ComIgormaznitsaProlContainersInsideClauseListItem *)next
                          withComIgormaznitsaProlDataTermStruct:(ComIgormaznitsaProlDataTermStruct *)clause;
- (BOOL)isFact;
- (ComIgormaznitsaProlContainersInsideClauseListItem *)getPrevious;
- (void)setPreviousWithComIgormaznitsaProlContainersInsideClauseListItem:(ComIgormaznitsaProlContainersInsideClauseListItem *)value;
- (ComIgormaznitsaProlContainersInsideClauseListItem *)getNext;
- (void)setNextWithComIgormaznitsaProlContainersInsideClauseListItem:(ComIgormaznitsaProlContainersInsideClauseListItem *)value;
- (void)remove;
- (NSString *)description;
- (void)copyAllFieldsTo:(ComIgormaznitsaProlContainersInsideClauseListItem *)other;
@end

J2OBJC_FIELD_SETTER(ComIgormaznitsaProlContainersInsideClauseListItem, previous_, ComIgormaznitsaProlContainersInsideClauseListItem *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlContainersInsideClauseListItem, next_, ComIgormaznitsaProlContainersInsideClauseListItem *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlContainersInsideClauseListItem, clause_, ComIgormaznitsaProlDataTermStruct *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlContainersInsideClauseListItem, keyTerm_, ComIgormaznitsaProlDataTerm *)

#endif // _ComIgormaznitsaProlContainersInsideClauseListItem_H_
