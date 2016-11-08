.class public final Lcom/sec/imsservice/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/imsservice/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"

.field public static final READ_IMS_PERMISSION:Ljava/lang/String; = "com.sec.imsservice.READ_IMS_PERMISSION"

.field public static final READ_PERMISSION:Ljava/lang/String; = "com.samsung.rcs.presence.READ_PERMISSION"

.field public static final WRITE_IMS_PERMISSION:Ljava/lang/String; = "com.sec.imsservice.WRITE_IMS_PERMISSION"

.field public static final WRITE_PERMISSION:Ljava/lang/String; = "com.samsung.rcs.presence.WRITE_PERMISSION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
