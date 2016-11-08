.class public Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable$VoLTE;
.super Ljava/lang/Object;
.source "CscParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoLTE"
.end annotation


# static fields
.field public static final DOMAIN_EMERGENCY_CALL:Ljava/lang/String; = "Emregencycall_Domain"

.field public static final DOMAIN_SMS_IP:Ljava/lang/String; = "SMSoIP_Domain"

.field public static final DOMAIN_SS:Ljava/lang/String; = "SS_Domain_Preference"

.field public static final DOMAIN_USSD:Ljava/lang/String; = "USSD_Domain_Preference"

.field public static final DOMAIN_VOICE_EUTRAN:Ljava/lang/String; = "Voice_Domain_Preference_EUTRAN"

.field public static final ENABLE_CDPN:Ljava/lang/String; = "EnableCdpn"

.field public static final ENABLE_SMS_IP:Ljava/lang/String; = "EnableSmsIp"

.field public static final ENABLE_SS:Ljava/lang/String; = "EnableSS"

.field public static final ENABLE_VIDEO_CALL:Ljava/lang/String; = "EnableVideocall"

.field public static final ENABLE_VOLTE:Ljava/lang/String; = "EnableVoLTE"

.field public static final SHOW_VOLTE_ICON_IN_USER:Ljava/lang/String; = "EnableVoLTEindicator"

.field public static final SS_CSFB_IMS_ERROR:Ljava/lang/String; = "SS_CSFBwithIMSerror"

.field public static final SS_PS_CONTROL_PREF:Ljava/lang/String; = "SS_PS_Control_Preference"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
