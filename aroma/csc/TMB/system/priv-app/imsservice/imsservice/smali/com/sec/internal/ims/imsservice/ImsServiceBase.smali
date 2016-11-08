.class public abstract Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.super Landroid/app/Service;
.source "ImsServiceBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mBinder:Lcom/sec/ims/IImsService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mBinder:Lcom/sec/ims/IImsService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate(): "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mBinder:Lcom/sec/ims/IImsService$Stub;

    .line 33
    return-void
.end method
