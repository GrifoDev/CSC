.class public Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;
.super Ljava/lang/Object;
.source "GlobalSettingsRepository.java"


# static fields
.field private static final CSC_GLOBALSETTING_XML:Ljava/lang/String; = "/system/csc/globalsettings.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "GlobalSettingsRepository"

.field private static final SHARED_PREFERECE:Ljava/lang/String; = "globalsettings"


# instance fields
.field private final IMS_SETTINGS_UPDATED:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mLock:Ljava/lang/Object;

    .line 70
    const-string v0, "android.intent.action.IMS_SETTINGS_UPDATED"

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->IMS_SETTINGS_UPDATED:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private applyCscSetting(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "globalSetting"    # Landroid/content/ContentValues;

    .prologue
    .line 445
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/CscParser;->getCscImsSetting(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 447
    .local v0, "setting":Landroid/content/ContentValues;
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->updateImsSettingFromCsc(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 449
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->updateServiceSwitch(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 451
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->updateDeviceManagement(Landroid/content/ContentValues;)V

    .line 452
    return-void
.end method

.method private compareOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "oplist"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 372
    if-nez p2, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v7

    .line 376
    :cond_1
    const-string v8, "GlobalSettingsRepository"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "compareOperator: operator="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " list="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v6, ""

    .line 379
    .local v6, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/config/Util;->getGcfPref()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 380
    sget-object v8, Lcom/sec/internal/ims/util/Mno;->GCF:Lcom/sec/internal/ims/util/Mno;

    invoke-virtual {v8}, Lcom/sec/internal/ims/util/Mno;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    .line 385
    :goto_1
    const-string v8, "00101"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 386
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "00101:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 389
    :cond_2
    const-string v8, ","

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "list":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, "operatorWithSalesCode":Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 393
    .local v4, "mccmnc":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 395
    :cond_3
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 382
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "list":[Ljava/lang/String;
    .end local v4    # "mccmnc":Ljava/lang/String;
    .end local v5    # "operatorWithSalesCode":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/util/OmcCode;->get()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 392
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "list":[Ljava/lang/String;
    .restart local v4    # "mccmnc":Ljava/lang/String;
    .restart local v5    # "operatorWithSalesCode":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private convertCscValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 535
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 567
    .end local p2    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object p2

    .line 535
    .restart local p2    # "value":Ljava/lang/String;
    :sswitch_0
    const-string v1, "ss_csfb_with_imserror"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "show_volte_regi_icon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "omadm/./3GPP_IMS/VOWIFI_SUPPORTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "ss_control_pref"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "voice_domain_pref_eutran"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 539
    :pswitch_0
    const-string v0, "TRUE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    const-string p2, "1"

    goto :goto_1

    .line 542
    :cond_2
    const-string p2, "0"

    goto :goto_1

    .line 546
    :pswitch_1
    const-string v0, "XCAP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 547
    :cond_3
    const-string p2, "0"

    goto :goto_1

    .line 549
    :cond_4
    const-string p2, "1"

    goto :goto_1

    .line 553
    :pswitch_2
    const-string v0, "CSVoiceOnly"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 554
    const-string p2, "1"

    goto :goto_1

    .line 555
    :cond_5
    const-string v0, "CSVoicePreferred"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 556
    const-string p2, "2"

    goto :goto_1

    .line 557
    :cond_6
    const-string v0, "IMSPSVoicePreferred"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 558
    const-string p2, "3"

    goto :goto_1

    .line 559
    :cond_7
    const-string v0, "IMSPSVoiceOnly"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    const-string p2, "4"

    goto/16 :goto_1

    .line 535
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1b02cefc -> :sswitch_2
        -0x16a30d1a -> :sswitch_1
        -0x9ec80bc -> :sswitch_3
        0xdcdb15e -> :sswitch_0
        0xe4bb6a9 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadGlobalSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 34
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "operator"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v15, "globalSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    const/16 v29, 0x0

    .line 209
    .local v29, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    .line 210
    .local v6, "cscFi":Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 211
    .local v17, "globalValues":Landroid/content/ContentValues;
    const-string v24, ""

    .line 212
    .local v24, "name":Ljava/lang/String;
    const-string v28, ""

    .line 213
    .local v28, "value":Ljava/lang/String;
    const-string v16, ""

    .line 215
    .local v16, "globalValue_name":Ljava/lang/String;
    const-string v30, "GlobalSettingsRepository"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "loadGlobalSettings: name="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " operator="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-nez p1, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 218
    const-string v30, "GlobalSettingsRepository"

    const-string v31, "load: globalSettings is not identified."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v8, Ljava/io/File;

    const-string v30, "/system/csc/globalsettings.xml"

    move-object/from16 v0, v30

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v8, "cscFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-lez v30, :cond_3

    .line 225
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v14

    .line 226
    .local v14, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 227
    invoke-virtual {v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v29

    .line 229
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 230
    .end local v6    # "cscFi":Ljava/io/FileInputStream;
    .local v7, "cscFi":Ljava/io/FileInputStream;
    const/16 v30, 0x0

    :try_start_1
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    move-object v6, v7

    .end local v7    # "cscFi":Ljava/io/FileInputStream;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "cscFi":Ljava/io/FileInputStream;
    :goto_1
    move-object/from16 v18, v17

    .line 253
    .end local v17    # "globalValues":Landroid/content/ContentValues;
    .local v18, "globalValues":Landroid/content/ContentValues;
    :cond_1
    :goto_2
    if-eqz v29, :cond_c

    :try_start_2
    invoke-interface/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "eventType":I
    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v13, v0, :cond_c

    .line 254
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v13, v0, :cond_1

    .line 255
    invoke-interface/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v27

    .line 256
    .local v27, "tag":Ljava/lang/String;
    const-string v30, "global"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_18

    .line 257
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    .end local v18    # "globalValues":Landroid/content/ContentValues;
    .restart local v17    # "globalValues":Landroid/content/ContentValues;
    :try_start_3
    const-string v16, ""

    .line 261
    const/16 v20, 0x0

    .local v20, "i":I
    invoke-interface/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    .local v5, "cnt":I
    :goto_3
    move/from16 v0, v20

    if-ge v0, v5, :cond_9

    .line 262
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    .line 263
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v28

    .line 264
    const-string v30, "parent"

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 265
    const-string v30, "GlobalSettingsRepository"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  parent: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 233
    .end local v5    # "cnt":I
    .end local v13    # "eventType":I
    .end local v20    # "i":I
    .end local v27    # "tag":Ljava/lang/String;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f030001

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v29

    goto/16 :goto_1

    .line 235
    :catch_0
    move-exception v10

    .line 237
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 238
    if-eqz v6, :cond_4

    .line 240
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_6
    move-object/from16 v18, v17

    .line 249
    .end local v17    # "globalValues":Landroid/content/ContentValues;
    .restart local v18    # "globalValues":Landroid/content/ContentValues;
    goto/16 :goto_2

    .line 241
    .end local v18    # "globalValues":Landroid/content/ContentValues;
    .restart local v17    # "globalValues":Landroid/content/ContentValues;
    :catch_1
    move-exception v11

    .line 243
    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 246
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v11    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 248
    .local v10, "e":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v18, v17

    .end local v17    # "globalValues":Landroid/content/ContentValues;
    .restart local v18    # "globalValues":Landroid/content/ContentValues;
    goto/16 :goto_2

    .line 266
    .end local v10    # "e":Ljava/io/IOException;
    .end local v18    # "globalValues":Landroid/content/ContentValues;
    .restart local v5    # "cnt":I
    .restart local v13    # "eventType":I
    .restart local v17    # "globalValues":Landroid/content/ContentValues;
    .restart local v20    # "i":I
    .restart local v27    # "tag":Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string v30, "mccmnc"

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 267
    const-string v30, "GlobalSettingsRepository"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  mccmnc: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 346
    .end local v5    # "cnt":I
    .end local v20    # "i":I
    :catch_3
    move-exception v10

    .line 347
    .end local v13    # "eventType":I
    .end local v27    # "tag":Ljava/lang/String;
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_8
    :try_start_7
    const-string v30, "GlobalSettingsRepository"

    const-string v31, "XmlPullParserException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 354
    if-eqz v6, :cond_6

    .line 356
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 362
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->CONTENT_URI:Landroid/net/Uri;

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 365
    new-instance v22, Landroid/content/Intent;

    const-string v30, "android.intent.action.IMS_SETTINGS_UPDATED"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v22, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 268
    .end local v22    # "intent":Landroid/content/Intent;
    .restart local v5    # "cnt":I
    .restart local v13    # "eventType":I
    .restart local v20    # "i":I
    .restart local v27    # "tag":Ljava/lang/String;
    :cond_7
    :try_start_9
    const-string v30, "name"

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 269
    move-object/from16 v16, v28

    .line 270
    const-string v30, "GlobalSettingsRepository"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Name: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4

    .line 349
    .end local v5    # "cnt":I
    .end local v20    # "i":I
    :catch_4
    move-exception v10

    .line 350
    .end local v13    # "eventType":I
    .end local v27    # "tag":Ljava/lang/String;
    .local v10, "e":Ljava/io/IOException;
    :goto_a
    :try_start_a
    const-string v30, "GlobalSettingsRepository"

    const-string v31, "IOException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 354
    if-eqz v6, :cond_8

    .line 356
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 362
    :cond_8
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->CONTENT_URI:Landroid/net/Uri;

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 365
    new-instance v22, Landroid/content/Intent;

    const-string v30, "android.intent.action.IMS_SETTINGS_UPDATED"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 276
    .end local v10    # "e":Ljava/io/IOException;
    .end local v22    # "intent":Landroid/content/Intent;
    .restart local v5    # "cnt":I
    .restart local v13    # "eventType":I
    .restart local v20    # "i":I
    .restart local v27    # "tag":Ljava/lang/String;
    :cond_9
    :try_start_c
    invoke-interface/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v30

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    invoke-interface/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_b

    .line 277
    :cond_a
    const/16 v20, 0x0

    invoke-interface/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    :goto_c
    move/from16 v0, v20

    if-ge v0, v5, :cond_9

    .line 278
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    .line 279
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v28

    .line 280
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    .line 286
    :cond_b
    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v5    # "cnt":I
    .end local v20    # "i":I
    :goto_d
    move-object/from16 v18, v17

    .line 288
    .end local v17    # "globalValues":Landroid/content/ContentValues;
    .restart local v18    # "globalValues":Landroid/content/ContentValues;
    goto/16 :goto_2

    .line 291
    .end local v13    # "eventType":I
    .end local v27    # "tag":Ljava/lang/String;
    :cond_c
    if-eqz p1, :cond_d

    :try_start_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_f

    .line 292
    :cond_d
    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ContentValues;

    .line 293
    .local v19, "gs":Landroid/content/ContentValues;
    const-string v30, "mccmnc"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->compareOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 294
    const-string v30, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    .end local v19    # "gs":Landroid/content/ContentValues;
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_11

    .line 301
    :cond_10
    const-string v30, "GlobalSettingsRepository"

    const-string v31, "load: not found. load default."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string p1, "default"

    .line 306
    :cond_11
    new-instance v23, Ljava/util/Stack;

    invoke-direct/range {v23 .. v23}, Ljava/util/Stack;-><init>()V

    .line 307
    .local v23, "link":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    move-object/from16 v25, p1

    .line 310
    .local v25, "parent":Ljava/lang/String;
    :goto_e
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 312
    .local v9, "cv":Landroid/content/ContentValues;
    const-string v30, "parent"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 313
    if-eqz v25, :cond_12

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_13

    .line 319
    :cond_12
    const-string v30, "GlobalSettingsRepository"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "globalSettings link: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual/range {v23 .. v23}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "cv":Landroid/content/ContentValues;
    check-cast v9, Landroid/content/ContentValues;

    .line 323
    .restart local v9    # "cv":Landroid/content/ContentValues;
    :goto_f
    invoke-virtual/range {v23 .. v23}, Ljava/util/Stack;->empty()Z

    move-result v30

    if-nez v30, :cond_14

    .line 324
    invoke-virtual/range {v23 .. v23}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 325
    .local v4, "childCv":Landroid/content/ContentValues;
    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_f

    .line 346
    .end local v4    # "childCv":Landroid/content/ContentValues;
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v23    # "link":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v25    # "parent":Ljava/lang/String;
    :catch_5
    move-exception v10

    move-object/from16 v17, v18

    .end local v18    # "globalValues":Landroid/content/ContentValues;
    .restart local v17    # "globalValues":Landroid/content/ContentValues;
    goto/16 :goto_8

    .line 317
    .end local v17    # "globalValues":Landroid/content/ContentValues;
    .restart local v9    # "cv":Landroid/content/ContentValues;
    .restart local v18    # "globalValues":Landroid/content/ContentValues;
    .restart local v23    # "link":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .restart local v25    # "parent":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 349
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v23    # "link":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v25    # "parent":Ljava/lang/String;
    :catch_6
    move-exception v10

    move-object/from16 v17, v18

    .end local v18    # "globalValues":Landroid/content/ContentValues;
    .restart local v17    # "globalValues":Landroid/content/ContentValues;
    goto/16 :goto_a

    .line 329
    .end local v17    # "globalValues":Landroid/content/ContentValues;
    .restart local v9    # "cv":Landroid/content/ContentValues;
    .restart local v18    # "globalValues":Landroid/content/ContentValues;
    .restart local v23    # "link":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .restart local v25    # "parent":Ljava/lang/String;
    :cond_14
    const-string v30, "GlobalSettingsRepository"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Loading globalSetting "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_15

    invoke-static {}, Lcom/sec/internal/ims/imsservice/SimManager;->getVSimOperator()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_15

    .line 334
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->applyCscSetting(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 336
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->save(Landroid/content/ContentValues;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "globalsettings"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 340
    .local v26, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 341
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v30, "name"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 342
    const-string v30, "loaded"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 343
    const-string v30, "simnumeric"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 354
    if-eqz v6, :cond_16

    .line 356
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 362
    :cond_16
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->CONTENT_URI:Landroid/net/Uri;

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 365
    new-instance v22, Landroid/content/Intent;

    const-string v30, "android.intent.action.IMS_SETTINGS_UPDATED"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v17, v18

    .line 367
    .end local v18    # "globalValues":Landroid/content/ContentValues;
    .restart local v17    # "globalValues":Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 357
    .end local v17    # "globalValues":Landroid/content/ContentValues;
    .end local v22    # "intent":Landroid/content/Intent;
    .restart local v18    # "globalValues":Landroid/content/ContentValues;
    :catch_7
    move-exception v10

    .line 359
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 357
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v12    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v18    # "globalValues":Landroid/content/ContentValues;
    .end local v23    # "link":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v25    # "parent":Ljava/lang/String;
    .end local v26    # "sp":Landroid/content/SharedPreferences;
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v17    # "globalValues":Landroid/content/ContentValues;
    :catch_8
    move-exception v10

    .line 359
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 357
    :catch_9
    move-exception v10

    .line 359
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 354
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "globalValues":Landroid/content/ContentValues;
    .restart local v18    # "globalValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v30

    move-object/from16 v17, v18

    .end local v18    # "globalValues":Landroid/content/ContentValues;
    .restart local v17    # "globalValues":Landroid/content/ContentValues;
    :goto_11
    if-eqz v6, :cond_17

    .line 356
    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 362
    :cond_17
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    sget-object v32, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->CONTENT_URI:Landroid/net/Uri;

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 365
    new-instance v22, Landroid/content/Intent;

    const-string v31, "android.intent.action.IMS_SETTINGS_UPDATED"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 367
    throw v30

    .line 357
    .end local v22    # "intent":Landroid/content/Intent;
    :catch_a
    move-exception v10

    .line 359
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 354
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v30

    goto :goto_11

    .line 246
    .end local v6    # "cscFi":Ljava/io/FileInputStream;
    .restart local v7    # "cscFi":Ljava/io/FileInputStream;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_b
    move-exception v10

    move-object v6, v7

    .end local v7    # "cscFi":Ljava/io/FileInputStream;
    .restart local v6    # "cscFi":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 235
    .end local v6    # "cscFi":Ljava/io/FileInputStream;
    .restart local v7    # "cscFi":Ljava/io/FileInputStream;
    :catch_c
    move-exception v10

    move-object v6, v7

    .end local v7    # "cscFi":Ljava/io/FileInputStream;
    .restart local v6    # "cscFi":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v17    # "globalValues":Landroid/content/ContentValues;
    .restart local v13    # "eventType":I
    .restart local v18    # "globalValues":Landroid/content/ContentValues;
    .restart local v27    # "tag":Ljava/lang/String;
    :cond_18
    move-object/from16 v17, v18

    .end local v18    # "globalValues":Landroid/content/ContentValues;
    .restart local v17    # "globalValues":Landroid/content/ContentValues;
    goto/16 :goto_d
.end method

.method private save(Landroid/content/ContentValues;)V
    .locals 9
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 403
    iget-object v6, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    const-string v7, "globalsettings"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 405
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 406
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 407
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "GlobalSettingsRepository"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {}, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->getTableMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 414
    invoke-static {}, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->getTableMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "INT"

    if-ne v6, v7, :cond_2

    .line 416
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v2

    .line 419
    .local v2, "exception":Ljava/lang/ClassCastException;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 420
    .local v5, "value":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 407
    .end local v2    # "exception":Ljava/lang/ClassCastException;
    .end local v5    # "value":I
    :cond_1
    const-string v6, "null"

    goto :goto_1

    .line 423
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 428
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const-string v6, "rcs_model_name"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 429
    const-string v6, "rcs_model_name"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 432
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 433
    return-void
.end method

.method private updateDeviceManagement(Landroid/content/ContentValues;)V
    .locals 11
    .param p1, "cscSettings"    # Landroid/content/ContentValues;

    .prologue
    const/4 v10, 0x0

    .line 508
    if-nez p1, :cond_1

    .line 509
    const-string v7, "GlobalSettingsRepository"

    const-string v8, "can not find a matched csc settings"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 514
    .local v3, "dmValues":Landroid/content/ContentValues;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->getDeviceManagementMappingTable()Ljava/util/HashMap;

    move-result-object v5

    .line 515
    .local v5, "mappingTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 516
    .local v6, "mappingTableKey":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 518
    .local v0, "cscField":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 519
    .local v2, "dmTag":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "cscValue":Ljava/lang/String;
    const-string v7, "GlobalSettingsRepository"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cscField : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 522
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->convertCscValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 527
    .end local v0    # "cscField":Ljava/lang/String;
    .end local v1    # "cscValue":Ljava/lang/String;
    .end local v2    # "dmTag":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 528
    const-string v7, "GlobalSettingsRepository"

    const-string v8, "update config"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v7, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://com.samsung.rcs.dmconfigurationprovider/"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v3, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateImsSettingFromCsc(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 9
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "globalSettings"    # Landroid/content/ContentValues;
    .param p3, "cscSettings"    # Landroid/content/ContentValues;

    .prologue
    .line 457
    if-nez p3, :cond_1

    .line 458
    const-string v6, "GlobalSettingsRepository"

    const-string v7, "can not find a matched csc settings"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    return-void

    .line 462
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->getGlobalSettingsMappingTable()Ljava/util/HashMap;

    move-result-object v4

    .line 463
    .local v4, "mappingTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 464
    .local v5, "mappingTableKey":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    .local v0, "cscField":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 467
    .local v2, "globalSettingId":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "cscValue":Ljava/lang/String;
    const-string v6, "GlobalSettingsRepository"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "global id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 470
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->convertCscValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateServiceSwitch(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 11
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "cscSettings"    # Landroid/content/ContentValues;

    .prologue
    .line 476
    if-nez p2, :cond_0

    .line 477
    const-string v8, "GlobalSettingsRepository"

    const-string v9, "can not find a matched csc settings"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->resetServiceSwitch()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 488
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;->getServiceSwitchTable()Ljava/util/HashMap;

    move-result-object v3

    .line 489
    .local v3, "mappingTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 490
    .local v4, "mappingTableKey":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 492
    .local v5, "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 494
    .local v0, "cscField":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 495
    .local v6, "serviceSwitch":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 496
    .local v7, "switchValue":Ljava/lang/String;
    const-string v8, "GlobalSettingsRepository"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serviceSwitch : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", switchValue : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v8, "TRUE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 501
    .end local v0    # "cscField":Ljava/lang/String;
    .end local v6    # "serviceSwitch":Ljava/lang/String;
    .end local v7    # "switchValue":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableService(Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 502
    :catch_1
    move-exception v1

    .line 503
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getPreviousOperator()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "simnumeric"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isLoaded()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 436
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    const-string v3, "globalsettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 438
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "loaded"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 440
    .local v0, "loaded":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public load()V
    .locals 5

    .prologue
    .line 132
    const-string v1, ""

    .line 133
    .local v1, "operator":Ljava/lang/String;
    const-string v0, ""

    .line 136
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/config/Util;->getGcfPref()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 138
    sget-object v1, Lcom/sec/internal/ims/util/Mno;->GCF_OPERATOR_CODE:Ljava/lang/String;

    .line 139
    const-string v0, "GENERAL"

    .line 145
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 148
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 151
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    .line 152
    :cond_1
    const-string v3, "GlobalSettingsRepository"

    const-string v4, "load: SimOperator is not found."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v1, ""

    .line 170
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 171
    const-string v0, "default"

    .line 174
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_4

    .line 177
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->loadGlobalSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    return-void

    .line 142
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SimManager;->getVSimOperator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 86
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v2, "cv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->isLoaded()Z

    move-result v9

    if-nez v9, :cond_0

    .line 89
    const-string v9, "GlobalSettingsRepository"

    const-string v10, "query: globalsettings not loaded. loading now."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->load()V

    .line 93
    :cond_0
    iget-object v9, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    const-string v10, "globalsettings"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 96
    .local v8, "sp":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_3

    .line 97
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v6, v0, v5

    .line 98
    .local v6, "key":Ljava/lang/String;
    invoke-static {}, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->getTableMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 97
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {}, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->getTableMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "INT"

    if-ne v9, v10, :cond_2

    .line 103
    const/4 v9, -0x1

    :try_start_0
    invoke-interface {v8, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    :catch_0
    move-exception v4

    .line 105
    .local v4, "exception":Ljava/lang/ClassCastException;
    const-string v9, ""

    invoke-interface {v8, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    .end local v4    # "exception":Ljava/lang/ClassCastException;
    :cond_2
    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 112
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "len$":I
    :cond_3
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 115
    :cond_4
    const-string v9, "sms_format"

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 116
    iget-object v9, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    const-string v10, "SMS_FORMAT"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "dmSmsFormat":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 118
    const-string v9, "sms_format"

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v3    # "dmSmsFormat":Ljava/lang/String;
    :cond_5
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-direct {v1, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 123
    .local v1, "cursor":Landroid/database/MatrixCursor;
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 125
    return-object v1
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 183
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    monitor-exit v3

    .line 195
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mContext:Landroid/content/Context;

    const-string v4, "globalsettings"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v2, "loaded"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    monitor-exit v3

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public update(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 77
    const-string v0, "GlobalSettingsRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->save(Landroid/content/ContentValues;)V

    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
