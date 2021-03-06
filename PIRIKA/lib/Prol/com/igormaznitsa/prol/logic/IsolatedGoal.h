//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/logic/IsolatedGoal.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlLogicIsolatedGoal_H_
#define _ComIgormaznitsaProlLogicIsolatedGoal_H_

@class ComIgormaznitsaProlDataTerm;
@class ComIgormaznitsaProlDataVar;
@class ComIgormaznitsaProlLogicProlContext;
@protocol JavaUtilList;

#import "JreEmulation.h"
#include "com/igormaznitsa/prol/logic/Goal.h"

@interface ComIgormaznitsaProlLogicIsolatedGoal : ComIgormaznitsaProlLogicGoal {
 @public
  ComIgormaznitsaProlLogicGoal *basegoal_;
}

- (id)getAuxObject;
- (id)initWithComIgormaznitsaProlLogicGoal:(ComIgormaznitsaProlLogicGoal *)goal;
- (void)cut;
- (void)cutLocal;
- (id<JavaUtilList>)getChainAsList;
- (ComIgormaznitsaProlLogicProlContext *)getContext;
- (NSString *)getVarAsTextWithNSString:(NSString *)varName;
- (BOOL)isCompleted;
- (void)noMoreVariants;
- (ComIgormaznitsaProlLogicGoal *)replaceLastGoalAtChainWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)goal;
- (ComIgormaznitsaProlDataTerm *)getGoalTerm;
- (void)setAuxObjectWithId:(id)obj;
- (NSString *)description;
- (ComIgormaznitsaProlDataTerm *)solve;
- (ComIgormaznitsaProlDataVar *)getVarForNameWithNSString:(NSString *)name;
- (void)copyAllFieldsTo:(ComIgormaznitsaProlLogicIsolatedGoal *)other;
@end

J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicIsolatedGoal, basegoal_, ComIgormaznitsaProlLogicGoal *)

#endif // _ComIgormaznitsaProlLogicIsolatedGoal_H_
