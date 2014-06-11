//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/logic/ProlContext.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlLogicProlContext_H_
#define _ComIgormaznitsaProlLogicProlContext_H_

@class ComIgormaznitsaProlContainersOperatorContainer;
@class ComIgormaznitsaProlDataTerm;
@class ComIgormaznitsaProlDataTermStruct;
@class ComIgormaznitsaProlIoProlMemoryPipe;
@class ComIgormaznitsaProlLibrariesPredicateProcessor;
@class ComIgormaznitsaProlLibrariesProlAbstractLibrary;
@class ComIgormaznitsaProlLibrariesProlCoreLibrary;
@class ComIgormaznitsaProlLogicTriggersProlTriggerTypeEnum;
@class JavaIoPrintWriter;
@class JavaLangThread;
@class JavaLangThrowable;
@class JavaUtilConcurrentLocksReentrantLock;
@class JavaUtilConcurrentThreadPoolExecutor;
@class JavaUtilLoggingLogger;
@protocol ComIgormaznitsaProlContainersKnowledgeBase;
@protocol ComIgormaznitsaProlIoProlStreamManager;
@protocol ComIgormaznitsaProlIoProlTextReader;
@protocol ComIgormaznitsaProlIoProlTextWriter;
@protocol ComIgormaznitsaProlLogicKnowledgeBaseFactory;
@protocol ComIgormaznitsaProlLogicProlMappedObjectSearcher;
@protocol ComIgormaznitsaProlLogicTriggersProlTrigger;
@protocol ComIgormaznitsaProlTraceTraceListener;
@protocol JavaUtilConcurrentFuture;
@protocol JavaUtilList;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#include "java/lang/Runnable.h"
#include "java/lang/Thread.h"
#include "java/util/concurrent/RejectedExecutionHandler.h"
#include "java/util/concurrent/ThreadFactory.h"

@interface ComIgormaznitsaProlLogicProlContext : NSObject {
 @public
  NSString *contextName_;
  id<ComIgormaznitsaProlContainersKnowledgeBase> knowledgeBase_;
  JavaUtilConcurrentLocksReentrantLock *knowledgeBaseLocker_;
  id<JavaUtilList> libraries_;
  id<ComIgormaznitsaProlIoProlStreamManager> streamManager_;
  id<JavaUtilMap> inputStreams_;
  id<JavaUtilMap> outputStreams_;
  id<JavaUtilMap> pipes_;
  id<JavaUtilMap> triggersOnAssert_;
  id<JavaUtilMap> triggersOnRetract_;
  id<ComIgormaznitsaProlIoProlTextReader> currentInputStream_;
  id<ComIgormaznitsaProlIoProlTextWriter> currentOutputStream_;
  BOOL halted_;
  JavaUtilConcurrentThreadPoolExecutor *executorService_;
  id<JavaUtilMap> lockerTable_;
  JavaUtilConcurrentLocksReentrantLock *executorAndlockTableLocker_;
  id<JavaUtilList> mappedObjectSearchers_;
  JavaUtilConcurrentLocksReentrantLock *mappedObjectLocker_;
  JavaUtilConcurrentLocksReentrantLock *ioLocker_;
  JavaUtilConcurrentLocksReentrantLock *libLocker_;
  JavaUtilConcurrentLocksReentrantLock *triggerLocker_;
  id<ComIgormaznitsaProlTraceTraceListener> defaultTraceListener_;
  id<ComIgormaznitsaProlLogicKnowledgeBaseFactory> knowledgeBaseFactory_;
}

+ (JavaUtilLoggingLogger *)LOG;
+ (NSString *)CONTEXT_HALTED_MSG;
+ (NSString *)ENGINE_VERSION;
+ (NSString *)ENGINE_NAME;
+ (NSString *)USER_STREAM;
+ (ComIgormaznitsaProlLibrariesProlCoreLibrary *)PROL_CORE_LIBRARY;
- (id<ComIgormaznitsaProlTraceTraceListener>)getDefaultTraceListener;
- (void)setDefaultTraceListenerWithComIgormaznitsaProlTraceTraceListener:(id<ComIgormaznitsaProlTraceTraceListener>)traceListener;
- (NSString *)getName;
- (id<ComIgormaznitsaProlLogicKnowledgeBaseFactory>)getKnowledgeBaseFactory;
- (id)initWithNSString:(NSString *)name;
- (id)initWithNSString:(NSString *)name
withComIgormaznitsaProlIoProlStreamManager:(id<ComIgormaznitsaProlIoProlStreamManager>)streamManager;
- (id)initWithNSString:(NSString *)name
withComIgormaznitsaProlIoProlStreamManager:(id<ComIgormaznitsaProlIoProlStreamManager>)streamManager
withComIgormaznitsaProlContainersKnowledgeBase:(id<ComIgormaznitsaProlContainersKnowledgeBase>)knowledgebase;
- (id)initWithComIgormaznitsaProlIoProlStreamManager:(id<ComIgormaznitsaProlIoProlStreamManager>)streamManager
                                        withNSString:(NSString *)name
    withComIgormaznitsaProlLogicKnowledgeBaseFactory:(id<ComIgormaznitsaProlLogicKnowledgeBaseFactory>)kbfactory;
- (void)changeKnowledgeBaseWithNSString:(NSString *)knowledge_base_id
                           withNSString:(NSString *)knowledge_base_type;
- (void)addMappedObjectSearcherWithComIgormaznitsaProlLogicProlMappedObjectSearcher:(id<ComIgormaznitsaProlLogicProlMappedObjectSearcher>)searcher;
- (void)removeMappedObjectFinderWithComIgormaznitsaProlLogicProlMappedObjectSearcher:(id<ComIgormaznitsaProlLogicProlMappedObjectSearcher>)searcher;
- (id)findMappedObjectForNameWithNSString:(NSString *)name;
- (NSString *)findNameForMappedObjectWithId:(id)mappedObject;
- (id)findMappedObjectForTermWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)term;
- (id<JavaUtilConcurrentFuture>)solveAsynchronouslyWithNSString:(NSString *)goal
                      withComIgormaznitsaProlTraceTraceListener:(id<ComIgormaznitsaProlTraceTraceListener>)traceListener;
- (id<JavaUtilConcurrentFuture>)solveAsynchronouslyWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)goal
                                         withComIgormaznitsaProlTraceTraceListener:(id<ComIgormaznitsaProlTraceTraceListener>)traceListener;
- (JavaUtilConcurrentThreadPoolExecutor *)getContextExecutorService;
- (id<JavaUtilMap>)getLockerMap;
- (JavaUtilConcurrentLocksReentrantLock *)getLockerForNameWithNSString:(NSString *)name;
- (void)lockLockerForNameWithNSString:(NSString *)name;
- (BOOL)trylockLockerForNameWithNSString:(NSString *)name;
- (void)unlockLockerForNameWithNSString:(NSString *)name;
- (ComIgormaznitsaProlIoProlMemoryPipe *)getMemoryPipeForNameWithNSString:(NSString *)identifier;
- (id<ComIgormaznitsaProlIoProlStreamManager>)getStreamManager;
- (id<ComIgormaznitsaProlIoProlTextWriter>)getCurrentOutStream;
- (id<ComIgormaznitsaProlIoProlTextReader>)getCurrentInputStream;
- (void)tellWithNSString:(NSString *)resourceId
             withBoolean:(BOOL)append;
- (void)seeWithNSString:(NSString *)resourceId;
- (void)seen;
- (void)told;
- (BOOL)addLibraryWithComIgormaznitsaProlLibrariesProlAbstractLibrary:(ComIgormaznitsaProlLibrariesProlAbstractLibrary *)library;
- (id<ComIgormaznitsaProlContainersKnowledgeBase>)getKnowledgeBase;
- (BOOL)removeLibraryWithComIgormaznitsaProlLibrariesProlAbstractLibrary:(ComIgormaznitsaProlLibrariesProlAbstractLibrary *)library;
- (void)writeKnowledgeBaseWithJavaIoPrintWriter:(JavaIoPrintWriter *)writer;
- (ComIgormaznitsaProlLibrariesPredicateProcessor *)findProcessorWithComIgormaznitsaProlDataTermStruct:(ComIgormaznitsaProlDataTermStruct *)predicate;
- (BOOL)hasPredicateAtLibraryForSignatureWithNSString:(NSString *)signature;
- (BOOL)isSystemOperatorWithNSString:(NSString *)name;
- (ComIgormaznitsaProlContainersOperatorContainer *)getSystemOperatorForNameWithNSString:(NSString *)name;
- (BOOL)hasSystemOperatorStartsWithWithNSString:(NSString *)str;
- (void)halt;
- (BOOL)isHalted;
- (ComIgormaznitsaProlDataTerm *)objectAsTermWithId:(id)object;
- (id)termAsObjectWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)term;
- (void)registerTriggerWithComIgormaznitsaProlLogicTriggersProlTrigger:(id<ComIgormaznitsaProlLogicTriggersProlTrigger>)trigger;
- (void)unregisterTriggerWithComIgormaznitsaProlLogicTriggersProlTrigger:(id<ComIgormaznitsaProlLogicTriggersProlTrigger>)trigger;
- (BOOL)hasRegisteredTriggersForSignatureWithNSString:(NSString *)normalizedSignature
withComIgormaznitsaProlLogicTriggersProlTriggerTypeEnum:(ComIgormaznitsaProlLogicTriggersProlTriggerTypeEnum *)observedEvent;
- (void)notifyTriggersForSignatureWithNSString:(NSString *)normalizedSignature
withComIgormaznitsaProlLogicTriggersProlTriggerTypeEnum:(ComIgormaznitsaProlLogicTriggersProlTriggerTypeEnum *)observedEvent;
- (NSString *)description;
- (ComIgormaznitsaProlLogicProlContext *)makeCopy;
- (void)copyAllFieldsTo:(ComIgormaznitsaProlLogicProlContext *)other;
@end

J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, contextName_, NSString *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, knowledgeBase_, id<ComIgormaznitsaProlContainersKnowledgeBase>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, knowledgeBaseLocker_, JavaUtilConcurrentLocksReentrantLock *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, libraries_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, streamManager_, id<ComIgormaznitsaProlIoProlStreamManager>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, inputStreams_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, outputStreams_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, pipes_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, triggersOnAssert_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, triggersOnRetract_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, currentInputStream_, id<ComIgormaznitsaProlIoProlTextReader>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, currentOutputStream_, id<ComIgormaznitsaProlIoProlTextWriter>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, executorService_, JavaUtilConcurrentThreadPoolExecutor *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, lockerTable_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, executorAndlockTableLocker_, JavaUtilConcurrentLocksReentrantLock *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, mappedObjectSearchers_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, mappedObjectLocker_, JavaUtilConcurrentLocksReentrantLock *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, ioLocker_, JavaUtilConcurrentLocksReentrantLock *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, libLocker_, JavaUtilConcurrentLocksReentrantLock *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, triggerLocker_, JavaUtilConcurrentLocksReentrantLock *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, defaultTraceListener_, id<ComIgormaznitsaProlTraceTraceListener>)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext, knowledgeBaseFactory_, id<ComIgormaznitsaProlLogicKnowledgeBaseFactory>)

@interface ComIgormaznitsaProlLogicProlContext_ProlContextInsideThreadFactory : NSObject < JavaUtilConcurrentThreadFactory, JavaLangThread_UncaughtExceptionHandler, JavaUtilConcurrentRejectedExecutionHandler > {
 @public
  JavaUtilLoggingLogger *ownLOG_;
  NSString *ownercontextName_;
}

- (id)initWithComIgormaznitsaProlLogicProlContext:(ComIgormaznitsaProlLogicProlContext *)owner;
- (JavaLangThread *)newThreadWithJavaLangRunnable:(id<JavaLangRunnable>)runner OBJC_METHOD_FAMILY_NONE;
- (void)uncaughtExceptionWithJavaLangThread:(JavaLangThread *)thread
                      withJavaLangThrowable:(JavaLangThrowable *)exception;
- (void)rejectedExecutionWithJavaLangRunnable:(id<JavaLangRunnable>)r
     withJavaUtilConcurrentThreadPoolExecutor:(JavaUtilConcurrentThreadPoolExecutor *)executor;
- (void)copyAllFieldsTo:(ComIgormaznitsaProlLogicProlContext_ProlContextInsideThreadFactory *)other;
@end

J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext_ProlContextInsideThreadFactory, ownLOG_, JavaUtilLoggingLogger *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext_ProlContextInsideThreadFactory, ownercontextName_, NSString *)

@interface ComIgormaznitsaProlLogicProlContext_$1 : NSObject < JavaLangRunnable > {
 @public
  ComIgormaznitsaProlDataTerm *val$goal_;
  ComIgormaznitsaProlLogicProlContext *val$thisContext_;
  id<ComIgormaznitsaProlTraceTraceListener> val$traceListener_;
}

- (void)run;
- (id)initWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)capture$0
  withComIgormaznitsaProlLogicProlContext:(ComIgormaznitsaProlLogicProlContext *)capture$1
withComIgormaznitsaProlTraceTraceListener:(id<ComIgormaznitsaProlTraceTraceListener>)capture$2;
@end

J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext_$1, val$goal_, ComIgormaznitsaProlDataTerm *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext_$1, val$thisContext_, ComIgormaznitsaProlLogicProlContext *)
J2OBJC_FIELD_SETTER(ComIgormaznitsaProlLogicProlContext_$1, val$traceListener_, id<ComIgormaznitsaProlTraceTraceListener>)

#endif // _ComIgormaznitsaProlLogicProlContext_H_