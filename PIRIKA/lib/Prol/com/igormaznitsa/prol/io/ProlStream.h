//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/io/ProlStream.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlIoProlStream_H_
#define _ComIgormaznitsaProlIoProlStream_H_

@class ComIgormaznitsaProlDataTerm;
@class ComIgormaznitsaProlLogicProlContext;

#import "JreEmulation.h"

@protocol ComIgormaznitsaProlIoProlStream < NSObject, JavaObject >
- (ComIgormaznitsaProlLogicProlContext *)getContext;
- (void)close;
- (NSString *)getResourceId;
- (ComIgormaznitsaProlDataTerm *)getAsTerm;
@end

@interface ComIgormaznitsaProlIoProlStream : NSObject {
}
+ (NSString *)END_OF_FILE_STR;
+ (ComIgormaznitsaProlDataTerm *)END_OF_FILE;
@end

#endif // _ComIgormaznitsaProlIoProlStream_H_