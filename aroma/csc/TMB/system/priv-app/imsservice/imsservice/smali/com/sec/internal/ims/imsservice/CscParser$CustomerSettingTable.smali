.class public Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;
.super Ljava/lang/Object;
.source "CscParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/CscParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomerSettingTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable$DeviceManagement;,
        Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable$RCS;,
        Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable$VoLTE;
    }
.end annotation


# static fields
.field public static final ENABLE_IMS:Ljava/lang/String; = "EnableIMS"

.field private static final mDeviceManagementTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mGlobalSettingsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mServiceSwitchTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    .line 459
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "EnableVoLTEindicator"

    const-string v2, "show_volte_regi_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "SS_PS_Control_Preference"

    const-string v2, "ss_control_pref"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "SS_CSFBwithIMSerror"

    const-string v2, "ss_csfb_with_imserror"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "Voice_Domain_Preference_EUTRAN"

    const-string v2, "voice_domain_pref_eutran"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "Emregencycall_Domain"

    const-string v2, "emergency_domain_settings"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "USSD_Domain_Preference"

    const-string v2, "ussd_domain_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    const-string v1, "SS_Domain_Preference"

    const-string v2, "ss_domain_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mDeviceManagementTable:Ljava/util/HashMap;

    .line 474
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mDeviceManagementTable:Ljava/util/HashMap;

    const-string v1, "EnableVoWiFi"

    const-string v2, "omadm/./3GPP_IMS/VOWIFI_SUPPORTED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    .line 484
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableVoLTE"

    const-string v2, "mmtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableVideocall"

    const-string v2, "mmtel-video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableSmsIp"

    const-string v2, "smsip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableSS"

    const-string v2, "ss"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableCdpn"

    const-string v2, "cdpn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableOption"

    const-string v2, "options"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnablePresence"

    const-string v2, "presence"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableIm"

    const-string v2, "im"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableFt"

    const-string v2, "ft"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableIs"

    const-string v2, "is"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableVs"

    const-string v2, "vs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableXdm"

    const-string v2, "xdm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableSlm"

    const-string v2, "slm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableEuc"

    const-string v2, "euc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableGls"

    const-string v2, "gls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableCms"

    const-string v2, "cms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    const-string v1, "EnableFtHttp"

    const-string v2, "ft_http"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    return-void
.end method

.method public static getDeviceManagementMappingTable()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 478
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mDeviceManagementTable:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getGlobalSettingsMappingTable()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 469
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mGlobalSettingsTable:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getServiceSwitchTable()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->mServiceSwitchTable:Ljava/util/HashMap;

    return-object v0
.end method
