//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/io/DefaultProlStreamManagerImpl.java
//
//  Created by katsura on 14/04/13.
//

#include "IOSClass.h"
#include "com/igormaznitsa/prol/io/DefaultProlStreamManagerImpl.h"
#include "java/io/BufferedReader.h"
#include "java/io/FileNotFoundException.h"
#include "java/io/FileReader.h"
#include "java/io/FileWriter.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/PrintStream.h"
#include "java/io/PrintWriter.h"
#include "java/io/Reader.h"
#include "java/io/Writer.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"

@implementation ComIgormaznitsaProlIoDefaultProlStreamManagerImpl

static ComIgormaznitsaProlIoDefaultProlStreamManagerImpl * ComIgormaznitsaProlIoDefaultProlStreamManagerImpl_singltone_;

+ (ComIgormaznitsaProlIoDefaultProlStreamManagerImpl *)singltone {
  return ComIgormaznitsaProlIoDefaultProlStreamManagerImpl_singltone_;
}

+ (void)setSingltone:(ComIgormaznitsaProlIoDefaultProlStreamManagerImpl *)singltone {
  ComIgormaznitsaProlIoDefaultProlStreamManagerImpl_singltone_ = singltone;
}

- (id)init {
  return [super init];
}

+ (ComIgormaznitsaProlIoDefaultProlStreamManagerImpl *)getInstance {
  @synchronized([self class]) {
    {
      if (ComIgormaznitsaProlIoDefaultProlStreamManagerImpl_singltone_ == nil) {
        ComIgormaznitsaProlIoDefaultProlStreamManagerImpl_singltone_ = [[ComIgormaznitsaProlIoDefaultProlStreamManagerImpl alloc] init];
      }
      return ComIgormaznitsaProlIoDefaultProlStreamManagerImpl_singltone_;
    }
  }
}

- (JavaIoReader *)getReaderForResourceWithNSString:(NSString *)resourceName {
  @synchronized(self) {
    {
      if (resourceName == nil) {
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"The resource name must not be null"];
      }
      if ([((NSString *) nil_chk(resourceName)) isEqual:@"user"]) {
        return [[JavaIoInputStreamReader alloc] initWithJavaIoInputStream:[JavaLangSystem in]];
      }
      else {
        if ([resourceName hasPrefix:@"@"]) {
          NSString *jarName = [resourceName substring:1];
          JavaIoInputStream *inSream = [[self getClass] getResourceAsStream:jarName];
          if (inSream == nil) {
            @throw [[JavaIoFileNotFoundException alloc] initWithNSString:resourceName];
          }
          return [[JavaIoBufferedReader alloc] initWithJavaIoReader:[[JavaIoInputStreamReader alloc] initWithJavaIoInputStream:inSream]];
        }
        else {
          return [[JavaIoFileReader alloc] initWithNSString:resourceName];
        }
      }
    }
  }
}

- (JavaIoWriter *)getWriterForResourceWithNSString:(NSString *)resourceName
                                       withBoolean:(BOOL)append {
  @synchronized(self) {
    {
      if (resourceName == nil) {
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"The resource name must not be null"];
      }
      if ([((NSString *) nil_chk(resourceName)) isEqual:@"user"]) {
        return [[JavaIoPrintWriter alloc] initWithJavaIoOutputStream:[JavaLangSystem out]];
      }
      else {
        return [[JavaIoFileWriter alloc] initWithNSString:resourceName withBoolean:append];
      }
    }
  }
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "DefaultProlStreamManagerImpl", NULL, 0x2, NULL },
    { "getInstance", NULL, "Lcom.igormaznitsa.prol.io.DefaultProlStreamManagerImpl;", 0x39, NULL },
    { "getReaderForResourceWithNSString:", "getReaderForResource", "Ljava.io.Reader;", 0x21, "Ljava.io.IOException;" },
    { "getWriterForResourceWithNSString:withBoolean:", "getWriterForResource", "Ljava.io.Writer;", 0x21, "Ljava.io.IOException;" },
  };
  static J2ObjcFieldInfo fields[] = {
    { "singltone_", NULL, 0xa, "Lcom.igormaznitsa.prol.io.DefaultProlStreamManagerImpl;" },
  };
  static J2ObjcClassInfo _ComIgormaznitsaProlIoDefaultProlStreamManagerImpl = { "DefaultProlStreamManagerImpl", "com.igormaznitsa.prol.io", NULL, 0x1, 4, methods, 1, fields, 0, NULL};
  return &_ComIgormaznitsaProlIoDefaultProlStreamManagerImpl;
}

@end
