//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/io/DefaultProlStreamManagerImpl.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlIoDefaultProlStreamManagerImpl_H_
#define _ComIgormaznitsaProlIoDefaultProlStreamManagerImpl_H_

@class JavaIoReader;
@class JavaIoWriter;

#import "JreEmulation.h"
#include "com/igormaznitsa/prol/io/ProlStreamManager.h"

@interface ComIgormaznitsaProlIoDefaultProlStreamManagerImpl : NSObject < ComIgormaznitsaProlIoProlStreamManager > {
}

+ (ComIgormaznitsaProlIoDefaultProlStreamManagerImpl *)singltone;
+ (void)setSingltone:(ComIgormaznitsaProlIoDefaultProlStreamManagerImpl *)singltone;
- (id)init;
+ (ComIgormaznitsaProlIoDefaultProlStreamManagerImpl *)getInstance;
- (JavaIoReader *)getReaderForResourceWithNSString:(NSString *)resourceName;
- (JavaIoWriter *)getWriterForResourceWithNSString:(NSString *)resourceName
                                       withBoolean:(BOOL)append;
@end

#endif // _ComIgormaznitsaProlIoDefaultProlStreamManagerImpl_H_
