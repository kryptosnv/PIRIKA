//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/exceptions/ProlHaltExecutionException.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlExceptionsProlHaltExecutionException_H_
#define _ComIgormaznitsaProlExceptionsProlHaltExecutionException_H_

#import "JreEmulation.h"
#include "com/igormaznitsa/prol/exceptions/ProlException.h"

#define ComIgormaznitsaProlExceptionsProlHaltExecutionException_serialVersionUID -8265930292043474634LL

@interface ComIgormaznitsaProlExceptionsProlHaltExecutionException : ComIgormaznitsaProlExceptionsProlException {
 @public
  int status_;
}

+ (long long int)serialVersionUID;
- (id)init;
- (id)initWithInt:(int)status;
- (id)initWithNSString:(NSString *)cause
               withInt:(int)status;
- (int)getStatus;
- (void)copyAllFieldsTo:(ComIgormaznitsaProlExceptionsProlHaltExecutionException *)other;
@end

#endif // _ComIgormaznitsaProlExceptionsProlHaltExecutionException_H_
