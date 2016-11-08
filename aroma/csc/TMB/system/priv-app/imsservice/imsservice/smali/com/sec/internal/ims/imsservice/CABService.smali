.class public Lcom/sec/internal/ims/imsservice/CABService;
.super Landroid/app/Service;
.source "CABService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/sec/internal/ims/imsservice/CABService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/CABService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    sget-object v0, Lcom/sec/internal/ims/imsservice/CABService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/CABService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 20
    sget-object v2, Lcom/sec/internal/ims/imsservice/CABService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CABServiceModule"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 25
    new-instance v0, Lcom/sec/internal/ims/scab/CABServiceModule;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/sec/internal/ims/scab/CABServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 26
    .local v0, "module":Lcom/sec/internal/ims/scab/CABServiceModule;
    new-instance v2, Lcom/sec/internal/ims/scab/CABServiceStub;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/scab/CABServiceStub;-><init>(Lcom/sec/internal/ims/scab/CABServiceModule;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/CABService;->mBinder:Landroid/os/IBinder;

    .line 27
    return-void
.end method
