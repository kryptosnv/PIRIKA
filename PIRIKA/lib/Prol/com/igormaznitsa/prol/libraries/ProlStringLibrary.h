//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/libraries/ProlStringLibrary.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlLibrariesProlStringLibrary_H_
#define _ComIgormaznitsaProlLibrariesProlStringLibrary_H_

@class ComIgormaznitsaProlDataTermStruct;
@class ComIgormaznitsaProlLogicGoal;

#import "JreEmulation.h"
#include "com/igormaznitsa/prol/libraries/ProlAbstractLibrary.h"

@interface ComIgormaznitsaProlLibrariesProlStringLibrary : ComIgormaznitsaProlLibrariesProlAbstractLibrary {
}

+ (BOOL)predicateCONCATWithComIgormaznitsaProlLogicGoal:(ComIgormaznitsaProlLogicGoal *)goal
                  withComIgormaznitsaProlDataTermStruct:(ComIgormaznitsaProlDataTermStruct *)predicate;
+ (BOOL)predicateSTRTRIMWithComIgormaznitsaProlLogicGoal:(ComIgormaznitsaProlLogicGoal *)goal
                   withComIgormaznitsaProlDataTermStruct:(ComIgormaznitsaProlDataTermStruct *)predicate;
+ (BOOL)predicateUPPERLOWERWithComIgormaznitsaProlLogicGoal:(ComIgormaznitsaProlLogicGoal *)goal
                      withComIgormaznitsaProlDataTermStruct:(ComIgormaznitsaProlDataTermStruct *)predicate;
+ (BOOL)predicateSTRLENWithComIgormaznitsaProlLogicGoal:(ComIgormaznitsaProlLogicGoal *)goal
                  withComIgormaznitsaProlDataTermStruct:(ComIgormaznitsaProlDataTermStruct *)predicate;
+ (BOOL)predicateSTRINTWithComIgormaznitsaProlLogicGoal:(ComIgormaznitsaProlLogicGoal *)goal
                  withComIgormaznitsaProlDataTermStruct:(ComIgormaznitsaProlDataTermStruct *)predicate;
+ (BOOL)predicateSTRREALWithComIgormaznitsaProlLogicGoal:(ComIgormaznitsaProlLogicGoal *)goal
                   withComIgormaznitsaProlDataTermStruct:(ComIgormaznitsaProlDataTermStruct *)predicate;
- (id)init;
@end

#endif // _ComIgormaznitsaProlLibrariesProlStringLibrary_H_
