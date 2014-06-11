//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/io/ProlMemoryPipe.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlIoProlMemoryPipe_H_
#define _ComIgormaznitsaProlIoProlMemoryPipe_H_

@class ComIgormaznitsaProlDataTerm;
@class ComIgormaznitsaProlDataTermInteger;
@class ComIgormaznitsaProlIoProlTextInputStream;
@class ComIgormaznitsaProlIoProlTextOutputStream;
@class ComIgormaznitsaProlLogicProlContext;
@class IOSByteArray;
@class JavaNioCharsetCharset;

#import "JreEmulation.h"
#include "com/igormaznitsa/prol/io/ProlStream.h"
#include "com/igormaznitsa/prol/io/ProlTextReader.h"
#include "com/igormaznitsa/prol/io/ProlTextWriter.h"

@interface ComIgormaznitsaProlIoProlMemoryPipe : NSObject < ComIgormaznitsaProlIoProlStream, ComIgormaznitsaProlIoProlTextReader, ComIgormaznitsaProlIoProlTextWriter > {
 @public
  NSString *resourceId_;
  ComIgormaznitsaProlLogicProlContext *context_;
  ComIgormaznitsaProlIoProlTextInputStream *reader_;
  ComIgormaznitsaProlIoProlTextOutputStream *writer_;
}

- (id)initWithNSString:(NSString *)resourceId
withComIgormaznitsaProlLogicProlContext:(ComIgormaznitsaProlLogicProlContext *)context;
- (id<ComIgormaznitsaProlIoProlTextReader>)getReader;
- (id<ComIgormaznitsaProlIoProlTextWriter>)getWriter;
- (ComIgormaznitsaProlLogicProlContext *)getContext;
- (void)close;
- (void)closeForWriteOnly;
- (NSString *)getResourceId;
- (ComIgormaznitsaProlDataTerm *)getAsTerm;
- (ComIgormaznitsaProlDataTerm *)readToken;
- (ComIgormaznitsaProlDataTerm *)readTerm;
- (ComIgormaznitsaProlDataTermInteger *)readChar;
- (void)writeTermWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)term;
- (void)writeCharWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)term;
- (NSString *)getAllDataAsStringWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;
- (IOSByteArray *)getAllDataAsByteArray;
- (void)copyAllFieldsTo:(ComIgormaznitsaProlIoProlMemoryPipe *)other;
@end

J2OBJC_FIELD_SETTER(ComIgormaznitsaProlIoProlMemoryPipe, resourceId_, NSString *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlIoProlMemoryPipe, context_, ComIgormaznitsaProlLogicProlContext *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlIoProlMemoryPipe, reader_, ComIgormaznitsaProlIoProlTextInputStream *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlIoProlMemoryPipe, writer_, ComIgormaznitsaProlIoProlTextOutputStream *)

#endif // _ComIgormaznitsaProlIoProlMemoryPipe_H_