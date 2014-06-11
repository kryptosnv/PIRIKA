//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/data/TermInteger.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlDataTermInteger_H_
#define _ComIgormaznitsaProlDataTermInteger_H_

#import "JreEmulation.h"
#include "com/igormaznitsa/prol/data/NumericTerm.h"
#include "com/igormaznitsa/prol/data/Term.h"

@interface ComIgormaznitsaProlDataTermInteger : ComIgormaznitsaProlDataTerm < ComIgormaznitsaProlDataNumericTerm > {
 @public
  int intValue_;
}

- (id)initWithNSString:(NSString *)name;
- (id)initWithInt:(int)value;
- (NSString *)description;
- (NSString *)forWrite;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)obj;
- (BOOL)equWithoutSetWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)atom;
- (BOOL)EquWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)atom;
- (int)getValue;
- (NSNumber *)getNumericValue;
- (NSString *)getSourceLikeRepresentation;
- (NSString *)getText;
- (int)compareWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>)atom;
- (id<ComIgormaznitsaProlDataNumericTerm>)addWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>)atom;
- (id<ComIgormaznitsaProlDataNumericTerm>)subWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>)atom;
- (id<ComIgormaznitsaProlDataNumericTerm>)divWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>)atom;
- (id<ComIgormaznitsaProlDataNumericTerm>)mulWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>)atom;
- (id<ComIgormaznitsaProlDataNumericTerm>)neg;
- (int)getNumberType;
- (int)termComparsionWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)atom;
- (BOOL)hasAnyDifferenceWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)atom;
- (id<ComIgormaznitsaProlDataNumericTerm>)abs;
- (id<ComIgormaznitsaProlDataNumericTerm>)sign;
- (void)copyAllFieldsTo:(ComIgormaznitsaProlDataTermInteger *)other;
@end

#endif // _ComIgormaznitsaProlDataTermInteger_H_
