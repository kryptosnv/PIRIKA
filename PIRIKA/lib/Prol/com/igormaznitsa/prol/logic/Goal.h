//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/logic/Goal.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlLogicGoal_H_
#define _ComIgormaznitsaProlLogicGoal_H_

@class ComIgormaznitsaProlDataTerm;
@class ComIgormaznitsaProlDataTermStruct;
@class ComIgormaznitsaProlDataVar;
@class ComIgormaznitsaProlLibrariesPredicateProcessor;
@class ComIgormaznitsaProlLogicProlContext;
@class ComIgormaznitsaProlLogicVariableStateSnapshot;
@protocol ComIgormaznitsaProlContainersClauseIterator;
@protocol ComIgormaznitsaProlTraceTraceListener;
@protocol JavaUtilList;
@protocol JavaUtilMap;

#import "JreEmulation.h"

#define ComIgormaznitsaProlLogicGoal_GOALRESULT_FAIL 1
#define ComIgormaznitsaProlLogicGoal_GOALRESULT_SOLVED 0
#define ComIgormaznitsaProlLogicGoal_GOALRESULT_STACK_CHANGED 2

@interface ComIgormaznitsaProlLogicGoal : NSObject {
 @public
  ComIgormaznitsaProlLogicGoal *rootGoal_;
  id<JavaUtilMap> variables_;
  ComIgormaznitsaProlLogicVariableStateSnapshot *varSnapshot_;
  ComIgormaznitsaProlLogicProlContext *context_;
  id auxObject_;
  BOOL noMoreVariantsFlag_;
  ComIgormaznitsaProlDataTerm *goalTerm_;
  ComIgormaznitsaProlLogicGoal *prevGoalAtChain_;
  ComIgormaznitsaProlLogicGoal *rootLastGoalAtChain_;
  ComIgormaznitsaProlLogicGoal *subGoal_;
  ComIgormaznitsaProlDataTerm *subGoalConnector_;
  ComIgormaznitsaProlDataTerm *thisConnector_;
  ComIgormaznitsaProlDataTerm *nextAndTerm_;
  ComIgormaznitsaProlDataTerm *nextAndTermForNextGoal_;
  id<ComIgormaznitsaProlContainersClauseIterator> clauseIterator_;
  BOOL cutMeet_;
  id<ComIgormaznitsaProlTraceTraceListener> tracer_;
  BOOL notFirstProve_;
}

+ (int)GOALRESULT_SOLVED;
+ (int)GOALRESULT_FAIL;
+ (int)GOALRESULT_STACK_CHANGED;
- (NSString *)description;
- (id<JavaUtilList>)getChainAsList;
- (NSNumber *)getVarAsNumberWithNSString:(NSString *)varName;
- (NSString *)getVarAsTextWithNSString:(NSString *)varName;
- (ComIgormaznitsaProlDataVar *)getVarForNameWithNSString:(NSString *)name;
- (ComIgormaznitsaProlLogicGoal *)replaceLastGoalAtChainWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)goal;
- (id)initWithComIgormaznitsaProlLogicGoal:(ComIgormaznitsaProlLogicGoal *)rootGoal
           withComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)goal
   withComIgormaznitsaProlLogicProlContext:(ComIgormaznitsaProlLogicProlContext *)context
 withComIgormaznitsaProlTraceTraceListener:(id<ComIgormaznitsaProlTraceTraceListener>)tracer;
- (id)getAuxObject;
- (id<ComIgormaznitsaProlTraceTraceListener>)getTracer;
- (void)setAuxObjectWithId:(id)obj;
- (ComIgormaznitsaProlDataTerm *)getGoalTerm;
- (ComIgormaznitsaProlLogicProlContext *)getContext;
- (id)init;
- (id)initWithNSString:(NSString *)goal
withComIgormaznitsaProlLogicProlContext:(ComIgormaznitsaProlLogicProlContext *)context
withComIgormaznitsaProlTraceTraceListener:(id<ComIgormaznitsaProlTraceTraceListener>)tracer;
- (id)initWithNSString:(NSString *)goal
withComIgormaznitsaProlLogicProlContext:(ComIgormaznitsaProlLogicProlContext *)context;
- (id)initWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)goal
  withComIgormaznitsaProlLogicProlContext:(ComIgormaznitsaProlLogicProlContext *)context
withComIgormaznitsaProlTraceTraceListener:(id<ComIgormaznitsaProlTraceTraceListener>)tracer;
- (id)initWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)goal
  withComIgormaznitsaProlLogicProlContext:(ComIgormaznitsaProlLogicProlContext *)context;
- (ComIgormaznitsaProlDataTerm *)solve;
- (int)_solve;
- (void)noMoreVariants;
- (void)cut;
- (void)cutLocal;
- (ComIgormaznitsaProlLibrariesPredicateProcessor *)checkProcessorWithComIgormaznitsaProlDataTermStruct:(ComIgormaznitsaProlDataTermStruct *)structure;
- (BOOL)isCompleted;
- (ComIgormaznitsaProlLogicVariableStateSnapshot *)getVariableSnapshot;
- (void)copyAllFieldsTo:(ComIgormaznitsaProlLogicGoal *)other;
@end

J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, rootGoal_, ComIgormaznitsaProlLogicGoal *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, variables_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, varSnapshot_, ComIgormaznitsaProlLogicVariableStateSnapshot *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, context_, ComIgormaznitsaProlLogicProlContext *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, auxObject_, id)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, goalTerm_, ComIgormaznitsaProlDataTerm *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, prevGoalAtChain_, ComIgormaznitsaProlLogicGoal *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, rootLastGoalAtChain_, ComIgormaznitsaProlLogicGoal *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, subGoal_, ComIgormaznitsaProlLogicGoal *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, subGoalConnector_, ComIgormaznitsaProlDataTerm *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, thisConnector_, ComIgormaznitsaProlDataTerm *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, nextAndTerm_, ComIgormaznitsaProlDataTerm *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, nextAndTermForNextGoal_, ComIgormaznitsaProlDataTerm *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, clauseIterator_, id<ComIgormaznitsaProlContainersClauseIterator>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicGoal, tracer_, id<ComIgormaznitsaProlTraceTraceListener>)

#endif // _ComIgormaznitsaProlLogicGoal_H_
