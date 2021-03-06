//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/utils/IntegerHashSet.java
//
//  Created by katsura on 14/04/13.
//

#include "IOSClass.h"
#include "IOSIntArray.h"
#include "IOSObjectArray.h"
#include "com/igormaznitsa/prol/utils/IntegerHashSet.h"
#include "java/lang/System.h"

@implementation ComIgormaznitsaProlUtilsIntegerHashSet

+ (int)SIZE {
  return ComIgormaznitsaProlUtilsIntegerHashSet_SIZE;
}

+ (int)MASK {
  return ComIgormaznitsaProlUtilsIntegerHashSet_MASK;
}

- (id)init {
  if (self = [super init]) {
    insideArray_ = [IOSObjectArray arrayWithLength:ComIgormaznitsaProlUtilsIntegerHashSet_SIZE type:[IOSIntArray iosClass]];
  }
  return self;
}

- (BOOL)containsWithInt:(int)value {
  int index = value & ComIgormaznitsaProlUtilsIntegerHashSet_MASK;
  if (IOSObjectArray_Get(nil_chk(insideArray_), index) != nil) {
    IOSIntArray *arr = IOSObjectArray_Get(insideArray_, index);
    int len = (int) [((IOSIntArray *) nil_chk(arr)) count];
    for (int li = 0; li < len; li++) {
      int val = IOSIntArray_Get(arr, li);
      if (val == value) {
        if (li != 0) {
          int oldzero = IOSIntArray_Get(arr, 0);
          (*IOSIntArray_GetRef(arr, 0)) = val;
          (*IOSIntArray_GetRef(arr, li)) = oldzero;
        }
        return YES;
      }
    }
  }
  return NO;
}

- (void)addWithInt:(int)value {
  int index = value & ComIgormaznitsaProlUtilsIntegerHashSet_MASK;
  if (IOSObjectArray_Get(nil_chk(insideArray_), index) == nil) {
    (void) IOSObjectArray_Set(insideArray_, index, [IOSIntArray arrayWithInts:(int[]){ value } count:1]);
  }
  else {
    IOSIntArray *arr = IOSObjectArray_Get(insideArray_, index);
    int len = (int) [((IOSIntArray *) nil_chk(arr)) count];
    for (int li = 0; li < len; li++) {
      if (IOSIntArray_Get(arr, li) == value) {
        return;
      }
    }
    IOSIntArray *newarr = [IOSIntArray arrayWithLength:len + 1];
    [JavaLangSystem arraycopyWithId:arr withInt:0 withId:newarr withInt:0 withInt:len];
    (*IOSIntArray_GetRef(newarr, len)) = value;
    (void) IOSObjectArray_Set(insideArray_, index, newarr);
  }
}

- (void)copyAllFieldsTo:(ComIgormaznitsaProlUtilsIntegerHashSet *)other {
  [super copyAllFieldsTo:other];
  other->insideArray_ = insideArray_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "IntegerHashSet", NULL, 0x1, NULL },
    { "containsWithInt:", "contains", "Z", 0x1, NULL },
    { "addWithInt:", "add", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "SIZE_", NULL, 0x1a, "I" },
    { "MASK_", NULL, 0x1a, "I" },
    { "insideArray_", NULL, 0x12, "[[I" },
  };
  static J2ObjcClassInfo _ComIgormaznitsaProlUtilsIntegerHashSet = { "IntegerHashSet", "com.igormaznitsa.prol.utils", NULL, 0x11, 3, methods, 3, fields, 0, NULL};
  return &_ComIgormaznitsaProlUtilsIntegerHashSet;
}

@end
