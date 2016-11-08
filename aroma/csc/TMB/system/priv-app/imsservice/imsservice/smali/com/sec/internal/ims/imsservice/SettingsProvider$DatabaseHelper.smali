.class Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final SQL_CREATE_CSCPROFILE:Ljava/lang/String; = "CREATE TABLE cscprofile( id INTEGER PRIMARY KEY, network_name TEXT, pdn TEXT, mccmnc TEXT, field_name TEXT, value TEXT );"

.field private static final SQL_CREATE_CSCSETTING:Ljava/lang/String; = "CREATE TABLE cscsetting( id INTEGER PRIMARY KEY, network_name TEXT, mccmnc TEXT, field_name TEXT, value TEXT );"

.field private static final SQL_CREATE_IMPU_RECORD:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS impu( _id INTEGER PRIMARY KEY, imsi TEXT, impu TEXT, timestamp INT );"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 814
    const-string v0, "ims_config_data.db"

    const/4 v1, 0x0

    const/16 v2, 0x48

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 815
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 816
    return-void
.end method

.method private getDmConfigFromOldDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 965
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "nosim"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-object v1

    .line 968
    :cond_1
    const/4 v3, 0x0

    .line 969
    .local v3, "global":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select global_name from match_profile_id where mccmnc=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 970
    .local v5, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 972
    .local v0, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 977
    :goto_1
    if-eqz v0, :cond_3

    .line 978
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 980
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 984
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 987
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 991
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 992
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 993
    .local v6, "switchVolte":Ljava/lang/String;
    const/4 v7, 0x0

    .line 994
    .local v7, "switchVolteVideo":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select dm_lvc_enabled, dm_volte_enabled, dm_eab_enabled, lvc_enabled, volte_enabled from global where name=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 997
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1002
    :goto_2
    if-eqz v0, :cond_6

    .line 1003
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1005
    :cond_4
    const-string v8, "omadm/./3GPP_IMS/LVC_ENABLED"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v8, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v8, "omadm/./3GPP_IMS/EAB_SETTING"

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const/4 v8, 0x3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1009
    const/4 v8, 0x4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1010
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1012
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1015
    :cond_6
    if-nez v6, :cond_7

    if-eqz v7, :cond_0

    .line 1017
    :cond_7
    iget-object v8, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v9, "imsswitch"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1019
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1021
    .local v2, "e":Landroid/content/SharedPreferences$Editor;
    if-eqz v6, :cond_8

    .line 1022
    const-string v8, "mmtel"

    const-string v9, "1"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1025
    :cond_8
    if-eqz v7, :cond_9

    .line 1026
    const-string v8, "mmtel-video"

    const-string v9, "1"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1029
    :cond_9
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 973
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "switchVolte":Ljava/lang/String;
    .end local v7    # "switchVolteVideo":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 974
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v8, "ImsSettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SQLiteException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 998
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "switchVolte":Ljava/lang/String;
    .restart local v7    # "switchVolteVideo":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 999
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v8, "ImsSettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SQLiteException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method private getEnabledServicesFromOldDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 921
    const-string v9, "ImsSettingsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getEnabledServicesFromOldDb(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "nosim"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 961
    :cond_0
    :goto_0
    return v8

    .line 925
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "select profile_id from match_profile_id where mccmnc=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 926
    .local v7, "sql":Ljava/lang/String;
    invoke-virtual {p1, v7, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 927
    .local v0, "c":Landroid/database/Cursor;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 928
    .local v4, "id":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 929
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 931
    :cond_2
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 934
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 937
    :cond_4
    const/4 v5, 0x0

    .line 938
    .local v5, "service":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 939
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 940
    .local v2, "i":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "select service from profile where pdn=\'ims\' and id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 941
    invoke-virtual {p1, v7, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 942
    if-eqz v0, :cond_5

    .line 943
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 944
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 945
    const-string v9, "mmtel-video"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 946
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 950
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 955
    .end local v2    # "i":Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v10, "imsswitch"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 957
    .local v6, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 958
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    const-string v9, "mmtel-video"

    invoke-interface {v1, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 959
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 961
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private getSqlCreate(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Set;)Ljava/lang/String;
    .locals 9
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "tableMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "fielNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 746
    if-nez p3, :cond_0

    .line 780
    :goto_0
    return-object v5

    .line 749
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 752
    :cond_1
    const-string v6, "ImsSettingsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSqlCreate(). wrong map. Do not make ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CREATE TABLE "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 757
    .local v3, "queryBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const-string v4, ""

    .line 760
    .local v4, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 762
    .local v2, "isNotFirst":Z
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 763
    .local v0, "fieldName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 766
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "type":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 767
    .restart local v4    # "type":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 770
    if-eqz v2, :cond_4

    .line 771
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 773
    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    .line 779
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_5
    const-string v5, ");"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private migrateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 868
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "last_sim_info"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 870
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "last_sim_info_mccmnc"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "mccmnc":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 873
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 874
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "prev_sim_info"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 876
    const-string v3, "prev_sim_info_mccmnc"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 879
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->getDmConfigFromOldDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 880
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "ImsSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cv: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->getEnabledServicesFromOldDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 885
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 886
    const/16 v3, 0x48

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 888
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 889
    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mNvStorage:Lcom/sec/internal/ims/imsservice/NvStorage;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$200()Lcom/sec/internal/ims/imsservice/NvStorage;

    move-result-object v3

    const-string v4, "omadm"

    invoke-virtual {v3, v4, v0}, Lcom/sec/internal/ims/imsservice/NvStorage;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 892
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 894
    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$000()Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->reset()V

    .line 895
    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$000()Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->load()V

    .line 896
    return-void
.end method


# virtual methods
.method public initImsProfiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 917
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->initImsProfiles(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 820
    const-string v0, ""

    .line 821
    .local v0, "createSql":Ljava/lang/String;
    const-string v1, "ImsSettingsProvider"

    const-string v2, "Creating DB."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->deleteOldBackupFile()V

    .line 823
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->setDbCreated(Landroid/content/Context;Z)V

    .line 825
    const-string v1, "DROP TABLE IF EXISTS match_profile_id"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 826
    const-string v1, "DROP TABLE IF EXISTS profile"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 827
    const-string v1, "DROP TABLE IF EXISTS global"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 828
    const-string v1, "DROP TABLE IF EXISTS cscprofile"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 829
    const-string v1, "DROP TABLE IF EXISTS cscsetting"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 832
    const-string v1, "match_profile_id"

    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileIdTableMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$300()Ljava/util/HashMap;

    move-result-object v2

    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileIdTableFieldNameSet:Ljava/util/Set;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$400()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->getSqlCreate(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 834
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    const-string v1, "ImsSettingsProvider"

    const-string v2, "imsProfile map is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_0
    const-string v1, "profile"

    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$500()Ljava/util/HashMap;

    move-result-object v2

    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableFieldNameSet:Ljava/util/Set;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$600()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->getSqlCreate(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 844
    const-string v1, "ImsSettingsProvider"

    const-string v2, "imsProfile map is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_1
    const-string v1, "CREATE TABLE cscprofile( id INTEGER PRIMARY KEY, network_name TEXT, pdn TEXT, mccmnc TEXT, field_name TEXT, value TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 851
    const-string v1, "CREATE TABLE cscsetting( id INTEGER PRIMARY KEY, network_name TEXT, mccmnc TEXT, field_name TEXT, value TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 854
    const-string v1, "CREATE TABLE IF NOT EXISTS impu( _id INTEGER PRIMARY KEY, imsi TEXT, impu TEXT, timestamp INT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 861
    const-string v1, "/system/csc/imsprofile.xml"

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->initImsProfiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 863
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->setDbCreated(Landroid/content/Context;Z)V

    .line 864
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->setDbJustCreated(Landroid/content/Context;)V

    .line 865
    return-void

    .line 837
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 846
    :cond_1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 909
    const-string v0, "ImsSettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDowngrade() oldVersion ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] , newVersion ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 912
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->migrateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 914
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 900
    const-string v0, "ImsSettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade() oldVersion ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] , newVersion ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 903
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->migrateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 905
    :cond_0
    return-void
.end method
