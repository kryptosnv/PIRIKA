//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/io/ProlStreamManager.java
//
//  Created by katsura on 14/04/13.
//

#include "IOSClass.h"
#include "com/igormaznitsa/prol/io/ProlStreamManager.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/io/Writer.h"


@interface ComIgormaznitsaProlIoProlStreamManager : NSObject
@end

@implementation ComIgormaznitsaProlIoProlStreamManager

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getReaderForResourceWithNSString:", "getReaderForResource", "Ljava.io.Reader;", 0x401, "Ljava.io.IOException;" },
    { "getWriterForResourceWithNSString:withBoolean:", "getWriterForResource", "Ljava.io.Writer;", 0x401, "Ljava.io.IOException;" },
  };
  static J2ObjcClassInfo _ComIgormaznitsaProlIoProlStreamManager = { "ProlStreamManager", "com.igormaznitsa.prol.io", NULL, 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComIgormaznitsaProlIoProlStreamManager;
}

@end
