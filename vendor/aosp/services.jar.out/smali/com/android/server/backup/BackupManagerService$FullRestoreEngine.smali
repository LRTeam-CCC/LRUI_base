.class Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
.super Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullRestoreEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
    }
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mAllowApks:Z

.field mAllowObbs:Z

.field mBuffer:[B

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

.field final mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

.field final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOnlyPackage:Landroid/content/pm/PackageInfo;

.field final mPackageInstallers:Ljava/util/HashMap;
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

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/content/pm/PackageInfo;ZZ)V
    .locals 2
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p4, "allowApks"    # Z
    .param p5, "allowObbs"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4396
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 4333
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    .line 4336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 4340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 4343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 4347
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 4356
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 4359
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    .line 4833
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    .line 4834
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    .line 4397
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 4398
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 4399
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    .line 4400
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowObbs:Z

    .line 4401
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    .line 4402
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 4403
    return-void
.end method

.method private HEXLOG([B)V
    .locals 11
    .param p1, "block"    # [B

    .prologue
    const/16 v5, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5340
    const/4 v3, 0x0

    .line 5341
    .local v3, "offset":I
    array-length v4, p1

    .line 5342
    .local v4, "todo":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5343
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    if-lez v4, :cond_2

    .line 5344
    const-string v6, "%04x   "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5345
    if-le v4, v5, :cond_0

    move v2, v5

    .line 5346
    .local v2, "numThisLine":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 5347
    const-string v6, "%02x "

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v3, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5346
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_0
    move v2, v4

    .line 5345
    goto :goto_1

    .line 5349
    .restart local v1    # "i":I
    .restart local v2    # "numThisLine":I
    :cond_1
    const-string v6, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5350
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5351
    sub-int/2addr v4, v2

    .line 5352
    add-int/2addr v3, v2

    .line 5353
    goto :goto_0

    .line 5354
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_2
    return-void
.end method

.method private isRestorableFile(Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z
    .locals 3
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;

    .prologue
    const/4 v0, 0x0

    .line 5307
    const-string v1, "c"

    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5336
    :cond_0
    :goto_0
    return v0

    .line 5314
    :cond_1
    const-string v1, "r"

    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5319
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v2, "no_backup/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5328
    :cond_2
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5336
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method dumpFileMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;)V
    .locals 14
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;

    .prologue
    const/16 v6, 0x78

    const/16 v5, 0x77

    const/16 v4, 0x72

    const-wide/16 v12, 0x0

    const/16 v3, 0x2d

    .line 5174
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5177
    .local v0, "b":Ljava/lang/StringBuilder;
    iget v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    const/16 v2, 0x64

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5178
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x100

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5179
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x80

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5180
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x40

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_3

    move v2, v6

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5181
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x20

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5182
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_5

    move v2, v5

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5183
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_6

    move v2, v6

    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5184
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_7

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5185
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_8

    :goto_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5186
    iget-wide v4, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v8, 0x1

    and-long/2addr v4, v8

    cmp-long v2, v4, v12

    if-eqz v2, :cond_9

    :goto_9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5187
    const-string v2, " %9d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5189
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 5190
    .local v1, "stamp":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd HH:mm:ss "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5192
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5193
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5194
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5195
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5196
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5198
    const-string v2, "RestoreEngine"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5200
    return-void

    .end local v1    # "stamp":Ljava/util/Date;
    :cond_0
    move v2, v3

    .line 5177
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 5178
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 5179
    goto/16 :goto_2

    :cond_3
    move v2, v3

    .line 5180
    goto/16 :goto_3

    :cond_4
    move v2, v3

    .line 5181
    goto/16 :goto_4

    :cond_5
    move v2, v3

    .line 5182
    goto/16 :goto_5

    :cond_6
    move v2, v3

    .line 5183
    goto/16 :goto_6

    :cond_7
    move v4, v3

    .line 5184
    goto :goto_7

    :cond_8
    move v5, v3

    .line 5185
    goto :goto_8

    :cond_9
    move v6, v3

    .line 5186
    goto :goto_9
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5155
    array-length v1, p1

    .line 5156
    .local v1, "end":I
    if-lt p2, v1, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5159
    :cond_0
    move v2, p2

    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5160
    aget-byte v0, p1, v2

    .line 5163
    .local v0, "c":B
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 5167
    .end local v0    # "c":B
    :cond_1
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, p2

    invoke-direct {v4, p1, p2, v5}, Ljava/lang/String;-><init>([BII)V

    aput-object v4, p3, v3

    .line 5168
    add-int/lit8 v2, v2, 0x1

    .line 5169
    return v2

    .line 5159
    .restart local v0    # "c":B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractRadix([BIII)J
    .locals 10
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .param p4, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5443
    const-wide/16 v4, 0x0

    .line 5444
    .local v4, "value":J
    add-int v1, p2, p3

    .line 5445
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5446
    aget-byte v0, p1, v2

    .line 5448
    .local v0, "b":B
    if-eqz v0, :cond_0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    .line 5455
    .end local v0    # "b":B
    :cond_0
    return-wide v4

    .line 5449
    .restart local v0    # "b":B
    :cond_1
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    add-int/lit8 v3, p4, 0x30

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_3

    .line 5450
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5453
    :cond_3
    int-to-long v6, p4

    mul-long/2addr v6, v4

    add-int/lit8 v3, v0, -0x30

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 5445
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractString([BII)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5459
    add-int v0, p2, p3

    .line 5460
    .local v0, "end":I
    move v1, p2

    .line 5462
    .local v1, "eos":I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5463
    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p2

    const-string v4, "US-ASCII"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 22
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "instream"    # Ljava/io/InputStream;

    .prologue
    .line 4837
    const/4 v9, 0x1

    .line 4839
    .local v9, "okay":Z
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installing from backup: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4843
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4845
    .local v4, "apkFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4846
    .local v5, "apkStream":Ljava/io/FileOutputStream;
    const v18, 0x8000

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 4847
    .local v6, "buffer":[B
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    .line 4848
    .local v14, "size":J
    :goto_0
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_2

    .line 4849
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v18, v14

    if-gez v18, :cond_1

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 4850
    .local v16, "toRead":J
    :goto_1
    const/16 v18, 0x0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 4851
    .local v7, "didRead":I
    if-ltz v7, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move-wide/from16 v18, v0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 4852
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4853
    int-to-long v0, v7

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 4854
    goto :goto_0

    .end local v7    # "didRead":I
    .end local v16    # "toRead":J
    :cond_1
    move-wide/from16 v16, v14

    .line 4849
    goto :goto_1

    .line 4855
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 4858
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 4861
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 4862
    .local v10, "packageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->reset()V

    .line 4863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v19, v0

    const/16 v20, 0x22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 4866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->waitForCompletion()V

    .line 4868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->getResult()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 4872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 4873
    const/4 v9, 0x0

    .line 4932
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 4935
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    :goto_3
    return v9

    .line 4877
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v10    # "packageUri":Landroid/net/Uri;
    .restart local v14    # "size":J
    :cond_4
    const/4 v13, 0x0

    .line 4878
    .local v13, "uninstall":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 4879
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream claimed to include apk for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but apk was really "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    const/4 v9, 0x0

    .line 4884
    const/4 v13, 0x1

    .line 4921
    :cond_5
    :goto_4
    if-eqz v13, :cond_3

    .line 4922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->reset()V

    .line 4923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 4925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 4928
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v13    # "uninstall":Z
    .end local v14    # "size":J
    :catch_0
    move-exception v8

    .line 4929
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    const-string v18, "RestoreEngine"

    const-string v19, "Unable to transcribe restored apk for install"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4930
    const/4 v9, 0x0

    .line 4932
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 4887
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v10    # "packageUri":Landroid/net/Uri;
    .restart local v13    # "uninstall":Z
    .restart local v14    # "size":J
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 4889
    .local v11, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const v19, 0x8000

    and-int v18, v18, v19

    if-nez v18, :cond_7

    .line 4890
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream contains apk of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but it disallows backup/restore"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 4895
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/Signature;

    .line 4896
    .local v12, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v12, v11}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 4899
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    const/16 v19, 0x2710

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 4901
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " has restricted uid and no agent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 4906
    :cond_8
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " signatures do not match restore manifest"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4908
    const/4 v9, 0x0

    .line 4909
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 4912
    .end local v11    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v12    # "sigs":[Landroid/content/pm/Signature;
    :catch_1
    move-exception v8

    .line 4913
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Install of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " succeeded but now not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4915
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 4932
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v13    # "uninstall":Z
    .end local v14    # "size":J
    :catchall_0
    move-exception v18

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v18
.end method

.method readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .locals 22
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5021
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x10000

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    .line 5022
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest too big; corrupt? size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 5025
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 5030
    .local v4, "buffer":[B
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    .line 5031
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 5034
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 5035
    .local v14, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 5036
    .local v16, "str":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 5039
    .local v11, "offset":I
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5040
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 5041
    .local v17, "version":I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 5042
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5043
    const/16 v18, 0x0

    aget-object v9, v16, v18

    .line 5045
    .local v9, "manifestPackage":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 5046
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5047
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 5048
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5049
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 5050
    .local v13, "platformVersion":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5051
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    const/16 v18, 0x0

    aget-object v18, v16, v18

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 5052
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5053
    const/16 v18, 0x0

    aget-object v18, v16, v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 5054
    .local v7, "hasApk":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5055
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 5056
    .local v10, "numSigs":I
    if-lez v10, :cond_c

    .line 5057
    new-array v15, v10, [Landroid/content/pm/Signature;

    .line 5058
    .local v15, "sigs":[Landroid/content/pm/Signature;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 5059
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5060
    new-instance v18, Landroid/content/pm/Signature;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v18, v15, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5058
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 5032
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v11    # "offset":I
    .end local v13    # "platformVersion":I
    .end local v14    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .end local v15    # "sigs":[Landroid/content/pm/Signature;
    .end local v16    # "str":[Ljava/lang/String;
    .end local v17    # "version":I
    :cond_1
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Unexpected EOF in manifest"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 5051
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v11    # "offset":I
    .restart local v13    # "platformVersion":I
    .restart local v14    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .restart local v16    # "str":[Ljava/lang/String;
    .restart local v17    # "version":I
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 5062
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v10    # "numSigs":I
    .restart local v15    # "sigs":[Landroid/content/pm/Signature;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5066
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 5069
    .local v12, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5070
    .local v6, "flags":I
    const v18, 0x8000

    and-int v18, v18, v6

    if-eqz v18, :cond_a

    .line 5073
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    const/16 v19, 0x2710

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 5082
    :cond_4
    invoke-static {v15, v12}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 5083
    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_6

    .line 5084
    const-string v18, "RestoreEngine"

    const-string v19, "Sig + version match; taking data"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5127
    .end local v6    # "flags":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    :try_start_3
    sget-object v18, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_5

    if-nez v7, :cond_5

    .line 5128
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot restore package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " without the matching .apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 5149
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v13    # "platformVersion":I
    .end local v15    # "sigs":[Landroid/content/pm/Signature;
    .end local v17    # "version":I
    :cond_5
    :goto_3
    return-object v14

    .line 5090
    .restart local v6    # "flags":I
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v10    # "numSigs":I
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v13    # "platformVersion":I
    .restart local v15    # "sigs":[Landroid/content/pm/Signature;
    .restart local v17    # "version":I
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 5091
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Data version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is newer than installed version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - requiring apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5095
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_2

    .line 5097
    :cond_7
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Data requires newer version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; ignoring"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5099
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto/16 :goto_2

    .line 5103
    :cond_8
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest signatures do not match installed application for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 5114
    .end local v6    # "flags":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 5118
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 5119
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not installed; requiring apk in dataset"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5121
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 5107
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "flags":I
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_9
    :try_start_6
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is system level with no agent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 5143
    .end local v6    # "flags":I
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "platformVersion":I
    .end local v15    # "sigs":[Landroid/content/pm/Signature;
    .end local v17    # "version":I
    :catch_1
    move-exception v5

    .line 5144
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Corrupt restore manifest for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5111
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "flags":I
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v10    # "numSigs":I
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v13    # "platformVersion":I
    .restart local v15    # "sigs":[Landroid/content/pm/Signature;
    .restart local v17    # "version":I
    :cond_a
    :try_start_7
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but allowBackup=false"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 5145
    .end local v6    # "flags":I
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "platformVersion":I
    .end local v15    # "sigs":[Landroid/content/pm/Signature;
    .end local v17    # "version":I
    :catch_2
    move-exception v5

    .line 5146
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v18, "RestoreEngine"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5123
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v10    # "numSigs":I
    .restart local v13    # "platformVersion":I
    .restart local v15    # "sigs":[Landroid/content/pm/Signature;
    .restart local v17    # "version":I
    :cond_b
    :try_start_8
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto/16 :goto_2

    .line 5132
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "i":I
    .end local v15    # "sigs":[Landroid/content/pm/Signature;
    :cond_c
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Missing signature on backed-up package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5136
    .end local v7    # "hasApk":Z
    .end local v10    # "numSigs":I
    .end local v13    # "platformVersion":I
    :cond_d
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Expected package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but restore manifest claims "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5140
    .end local v9    # "manifestPackage":Ljava/lang/String;
    :cond_e
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown restore manifest version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5361
    if-gtz p4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5363
    :cond_0
    const/4 v1, 0x0

    .line 5364
    .local v1, "soFar":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 5365
    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 5366
    .local v0, "nRead":I
    if-gtz v0, :cond_2

    .line 5373
    .end local v0    # "nRead":I
    :cond_1
    return v1

    .line 5370
    .restart local v0    # "nRead":I
    :cond_2
    add-int/2addr v1, v0

    .line 5372
    goto :goto_0
.end method

.method readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V
    .locals 16
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4957
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v14, 0x10000

    cmp-long v11, v12, v14

    if-lez v11, :cond_0

    .line 4958
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Metadata too big; corrupt? size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4961
    :cond_0
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v11, v12

    new-array v3, v11, [B

    .line 4962
    .local v3, "buffer":[B
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v11, v12}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v11

    int-to-long v12, v11

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    .line 4963
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 4966
    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    .line 4967
    .local v8, "str":[Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v8}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    .line 4968
    .local v5, "offset":I
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4969
    .local v10, "version":I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 4970
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v8}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    .line 4971
    const/4 v11, 0x0

    aget-object v6, v8, v11

    .line 4972
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4975
    new-instance v2, Ljava/io/ByteArrayInputStream;

    array-length v11, v3

    sub-int/2addr v11, v5

    invoke-direct {v2, v3, v5, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 4977
    .local v2, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4978
    .local v4, "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    if-lez v11, :cond_4

    .line 4979
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 4980
    .local v9, "token":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 4981
    .local v7, "size":I
    const/high16 v11, 0x10000

    if-le v7, v11, :cond_2

    .line 4982
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Datum "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " too big; corrupt? size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4964
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "offset":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "size":I
    .end local v8    # "str":[Ljava/lang/String;
    .end local v9    # "token":I
    .end local v10    # "version":I
    :cond_1
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Unexpected EOF in widget data"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4986
    .restart local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "offset":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "size":I
    .restart local v8    # "str":[Ljava/lang/String;
    .restart local v9    # "token":I
    .restart local v10    # "version":I
    :cond_2
    packed-switch v9, :pswitch_data_0

    .line 4999
    const-string v11, "RestoreEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring metadata blob "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5003
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_0

    .line 4992
    :pswitch_0
    new-array v11, v7, [B

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    .line 4993
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    invoke-virtual {v4, v11}, Ljava/io/DataInputStream;->read([B)I

    goto/16 :goto_0

    .line 5009
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v7    # "size":I
    .end local v9    # "token":I
    :cond_3
    const-string v11, "RestoreEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Metadata mismatch: package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " but widget data for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5015
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 5013
    :cond_5
    const-string v11, "RestoreEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported metadata version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4986
    nop

    :pswitch_data_0
    .packed-switch 0x1ffed01
        :pswitch_0
    .end packed-switch
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z
    .locals 16
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5388
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v14, 0x8000

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    .line 5389
    const-string v12, "RestoreEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Suspiciously large pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - aborting"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sanity failure: pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5395
    :cond_0
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v14, 0x1ff

    add-long/2addr v12, v14

    const/16 v14, 0x9

    shr-long/2addr v12, v14

    long-to-int v8, v12

    .line 5396
    .local v8, "numBlocks":I
    mul-int/lit16 v12, v8, 0x200

    new-array v3, v12, [B

    .line 5397
    .local v3, "data":[B
    const/4 v12, 0x0

    array-length v13, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v12

    array-length v13, v3

    if-ge v12, v13, :cond_1

    .line 5398
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Unable to read full pax header"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5400
    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    array-length v14, v3

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 5402
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v2, v12

    .line 5403
    .local v2, "contentSize":I
    const/4 v9, 0x0

    .line 5406
    .local v9, "offset":I
    :cond_2
    add-int/lit8 v4, v9, 0x1

    .line 5407
    .local v4, "eol":I
    :goto_0
    if-ge v4, v2, :cond_3

    aget-byte v12, v3, v4

    const/16 v13, 0x20

    if-eq v12, v13, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5408
    :cond_3
    if-lt v4, v2, :cond_4

    .line 5410
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Invalid pax data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5413
    :cond_4
    sub-int v12, v4, v9

    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v12

    long-to-int v7, v12

    .line 5414
    .local v7, "linelen":I
    add-int/lit8 v5, v4, 0x1

    .line 5415
    .local v5, "key":I
    add-int v12, v9, v7

    add-int/lit8 v4, v12, -0x1

    .line 5417
    add-int/lit8 v11, v5, 0x1

    .local v11, "value":I
    :goto_1
    aget-byte v12, v3, v11

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_5

    if-gt v11, v4, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 5418
    :cond_5
    if-le v11, v4, :cond_6

    .line 5419
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Invalid pax declaration"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5423
    :cond_6
    new-instance v6, Ljava/lang/String;

    sub-int v12, v11, v5

    const-string v13, "UTF-8"

    invoke-direct {v6, v3, v5, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 5425
    .local v6, "keyStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v12, v11, 0x1

    sub-int v13, v4, v11

    add-int/lit8 v13, v13, -0x1

    const-string v14, "UTF-8"

    invoke-direct {v10, v3, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 5427
    .local v10, "valStr":Ljava/lang/String;
    const-string v12, "path"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 5428
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5435
    :goto_2
    add-int/2addr v9, v7

    .line 5436
    if-lt v9, v2, :cond_2

    .line 5438
    const/4 v12, 0x1

    return v12

    .line 5429
    :cond_7
    const-string v12, "size"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 5430
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    goto :goto_2

    .line 5432
    :cond_8
    const-string v12, "RestoreEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unhandled pax key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .locals 6
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 5377
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 5378
    .local v0, "got":I
    if-nez v0, :cond_0

    .line 5381
    :goto_0
    return v1

    .line 5379
    :cond_0
    if-ge v0, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5380
    :cond_1
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    const-wide/16 v4, 0x200

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 5381
    const/4 v1, 0x1

    goto :goto_0
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .locals 13
    .param p1, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5204
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 5205
    .local v0, "block":[B
    const/4 v3, 0x0

    .line 5207
    .local v3, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 5208
    .local v2, "gotHeader":Z
    if-eqz v2, :cond_7

    .line 5211
    :try_start_0
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;

    invoke-direct {v4}, Lcom/android/server/backup/BackupManagerService$FileMetadata;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5212
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .local v4, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    const/16 v8, 0x7c

    const/16 v9, 0xc

    const/16 v10, 0x8

    :try_start_1
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    .line 5213
    const/16 v8, 0x88

    const/16 v9, 0xc

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    .line 5214
    const/16 v8, 0x64

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    .line 5216
    const/16 v8, 0x159

    const/16 v9, 0x9b

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5217
    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    .line 5218
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 5219
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5220
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5224
    :cond_1
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    .line 5225
    .local v7, "typeChar":I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_4

    .line 5227
    invoke-virtual {p0, p1, v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z

    move-result v2

    .line 5228
    if-eqz v2, :cond_2

    .line 5231
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 5233
    :cond_2
    if-nez v2, :cond_3

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5295
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 5297
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :goto_0
    const-string v8, "RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5298
    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->HEXLOG([B)V

    .line 5300
    throw v1

    .line 5235
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :cond_3
    const/16 v8, 0x9c

    :try_start_2
    aget-byte v7, v0, v8

    .line 5238
    :cond_4
    sparse-switch v7, :sswitch_data_0

    .line 5254
    const-string v8, "RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5239
    :sswitch_0
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    .line 5262
    :cond_5
    :goto_1
    const-string v8, "shared/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "shared/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 5265
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5266
    const-string v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 5267
    const-string v8, "shared"

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 5268
    const-string v8, "RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    move-object v3, v4

    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_7
    move-object v8, v3

    .line 5303
    :goto_3
    return-object v8

    .line 5241
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :sswitch_1
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    .line 5242
    iget-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 5243
    const-string v8, "RestoreEngine"

    const-string v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5244
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    goto :goto_1

    .line 5250
    :sswitch_2
    const-string v8, "RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saw type=0 in tar header block, info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5251
    const/4 v3, 0x0

    move-object v8, v3

    move-object v3, v4

    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    goto :goto_3

    .line 5269
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_8
    const-string v8, "apps/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "apps/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 5274
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5277
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 5278
    .local v6, "slash":I
    if-gez v6, :cond_9

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5279
    :cond_9
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 5280
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5284
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_meta"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 5286
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 5287
    if-gez v6, :cond_a

    .line 5288
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5291
    :cond_a
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 5292
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 5295
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "slash":I
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 5238
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method public restoreOneFile(Ljava/io/InputStream;)Z
    .locals 44
    .param p1, "instream"    # Ljava/io/InputStream;

    .prologue
    .line 4406
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4407
    const-string v5, "RestoreEngine"

    const-string v7, "Restore engine used after halting"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    const/4 v5, 0x0

    .line 4722
    :goto_0
    return v5

    .line 4416
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;

    move-result-object v33

    .line 4417
    .local v33, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    if-eqz v33, :cond_4

    .line 4422
    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 4423
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4426
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_1

    .line 4427
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4428
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but saw "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    const/4 v5, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    .line 4431
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    .line 4432
    const/4 v5, 0x0

    goto :goto_0

    .line 4438
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4439
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4444
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_3

    .line 4445
    const-string v5, "RestoreEngine"

    const-string v7, "Saw new package; finalizing old one"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 4448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 4449
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 4450
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    .line 4454
    :cond_3
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, "_manifest"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4455
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4456
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v33

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4460
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    .line 4461
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->sendOnRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4714
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_1
    if-nez v33, :cond_5

    .line 4718
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 4719
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 4720
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    .line 4722
    :cond_5
    if-eqz v33, :cond_1c

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 4462
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, "_meta"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4464
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V

    .line 4465
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4707
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v33    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_0
    move-exception v32

    .line 4708
    .local v32, "e":Ljava/io/IOException;
    const-string v5, "RestoreEngine"

    const-string v7, "io exception on restore socket read"

    move-object/from16 v0, v32

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4709
    const/4 v5, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    .line 4710
    const/16 v33, 0x0

    .restart local v33    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    goto :goto_1

    .line 4469
    .end local v32    # "e":Ljava/io/IOException;
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_7
    const/16 v35, 0x1

    .line 4470
    .local v35, "okay":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 4471
    .local v40, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    sget-object v5, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$RestorePolicy:[I

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 4516
    const-string v5, "RestoreEngine"

    const-string v7, "Invalid policy from manifest"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4517
    const/16 v35, 0x0

    .line 4518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4523
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 4524
    const/16 v35, 0x0

    .line 4529
    :cond_9
    if-eqz v35, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_a

    .line 4530
    const-string v5, "RestoreEngine"

    const-string v7, "Reusing existing agent instance"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4532
    :cond_a
    if-eqz v35, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_b

    .line 4533
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to launch agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4536
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 4540
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 4544
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v5, :cond_13

    .line 4545
    const-string v5, "RestoreEngine"

    const-string v7, "Clearing app data preparatory to full restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 4551
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4557
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setUpPipes()V

    .line 4558
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x3

    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 4560
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4567
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_b

    .line 4568
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    const/16 v35, 0x0

    .line 4570
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 4571
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4577
    :cond_b
    if-eqz v35, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 4578
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restoring data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but agent is for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    const/16 v35, 0x0

    .line 4587
    :cond_c
    if-eqz v35, :cond_19

    .line 4588
    const/4 v4, 0x1

    .line 4589
    .local v4, "agentSuccess":Z
    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v42, v0

    .line 4590
    .local v42, "toCopy":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v16

    .line 4592
    .local v16, "token":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v8, 0x493e0

    const/4 v7, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v8, v9, v7}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 4593
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "obb"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 4594
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restoring OBB file for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4596
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, v33

    iget v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    move-object/from16 v0, v33

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    move-object/from16 v0, v33

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 4631
    :goto_6
    if-eqz v35, :cond_10

    .line 4636
    const/16 v39, 0x1

    .line 4637
    .local v39, "pipeOkay":Z
    :try_start_6
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4639
    .local v38, "pipe":Ljava/io/FileOutputStream;
    :cond_d
    :goto_7
    const-wide/16 v8, 0x0

    cmp-long v5, v42, v8

    if-lez v5, :cond_f

    .line 4640
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v5, v5

    int-to-long v8, v5

    cmp-long v5, v42, v8

    if-lez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v0, v5

    move/from16 v41, v0

    .line 4642
    .local v41, "toRead":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v5, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v36

    .line 4643
    .local v36, "nRead":I
    if-ltz v36, :cond_e

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move/from16 v0, v36

    int-to-long v12, v0

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 4644
    :cond_e
    if-gtz v36, :cond_18

    .line 4661
    .end local v36    # "nRead":I
    .end local v41    # "toRead":I
    :cond_f
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    .line 4665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v4

    .line 4670
    .end local v38    # "pipe":Ljava/io/FileOutputStream;
    .end local v39    # "pipeOkay":Z
    :cond_10
    if-nez v4, :cond_19

    .line 4672
    const-string v5, "RestoreEngine"

    const-string v7, "Agent failure; ending restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4674
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 4675
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 4676
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 4677
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 4678
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4682
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_19

    .line 4683
    const/4 v5, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    .line 4684
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    .line 4685
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4473
    .end local v4    # "agentSuccess":Z
    .end local v16    # "token":I
    .end local v42    # "toCopy":J
    :pswitch_0
    const/16 v35, 0x0

    .line 4474
    goto/16 :goto_2

    .line 4479
    :pswitch_1
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 4480
    const-string v5, "RestoreEngine"

    const-string v7, "APK file; installing"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 4483
    .local v34, "installerName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v35

    .line 4485
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v35, :cond_11

    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    :goto_9
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4491
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    .line 4492
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 4485
    :cond_11
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_9

    .line 4496
    .end local v34    # "installerName":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4497
    const/16 v35, 0x0

    .line 4499
    goto/16 :goto_2

    .line 4502
    :pswitch_2
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4503
    const-string v5, "RestoreEngine"

    const-string v7, "apk present but ACCEPT"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 4508
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 4548
    :cond_13
    :try_start_7
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backup agent ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") => no clear"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4561
    :catch_1
    move-exception v5

    goto/16 :goto_5

    .line 4553
    :cond_14
    const-string v5, "RestoreEngine"

    const-string v7, "We\'ve initialized this app already; no clear required"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4

    .line 4563
    :catch_2
    move-exception v5

    goto/16 :goto_5

    .line 4600
    .restart local v4    # "agentSuccess":Z
    .restart local v16    # "token":I
    .restart local v42    # "toCopy":J
    :cond_15
    :try_start_8
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invoking agent to restore file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4606
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v7, "system"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 4607
    const-string v5, "RestoreEngine"

    const-string v7, "system process agent - spinning a thread"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    new-instance v11, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v15, v5, v7

    move-object/from16 v12, p0

    move-object/from16 v14, v33

    invoke-direct/range {v11 .. v16}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/app/IBackupAgent;Lcom/android/server/backup/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 4610
    .local v11, "runner":Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
    new-instance v5, Ljava/lang/Thread;

    const-string v7, "restore-sys-runner"

    invoke-direct {v5, v11, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_6

    .line 4617
    .end local v11    # "runner":Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
    :catch_3
    move-exception v32

    .line 4619
    .restart local v32    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v5, "RestoreEngine"

    const-string v7, "Couldn\'t establish restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 4620
    const/4 v4, 0x0

    .line 4621
    const/16 v35, 0x0

    .line 4628
    goto/16 :goto_6

    .line 4612
    .end local v32    # "e":Ljava/io/IOException;
    :cond_16
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v18, v5, v7

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    move/from16 v21, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v5, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v29, v0

    move/from16 v28, v16

    invoke-interface/range {v17 .. v29}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_6

    .line 4622
    :catch_4
    move-exception v32

    .line 4625
    .local v32, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string v5, "RestoreEngine"

    const-string v7, "Agent crashed during full restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 4626
    const/4 v4, 0x0

    .line 4627
    const/16 v35, 0x0

    goto/16 :goto_6

    .line 4640
    .end local v32    # "e":Landroid/os/RemoteException;
    .restart local v38    # "pipe":Ljava/io/FileOutputStream;
    .restart local v39    # "pipeOkay":Z
    :cond_17
    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v41, v0

    goto/16 :goto_8

    .line 4645
    .restart local v36    # "nRead":I
    .restart local v41    # "toRead":I
    :cond_18
    move/from16 v0, v36

    int-to-long v8, v0

    sub-long v42, v42, v8

    .line 4649
    if-eqz v39, :cond_d

    .line 4651
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    const/4 v7, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v5, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_7

    .line 4652
    :catch_5
    move-exception v32

    .line 4653
    .local v32, "e":Ljava/io/IOException;
    :try_start_d
    const-string v5, "RestoreEngine"

    const-string v7, "Failed to write to restore pipe"

    move-object/from16 v0, v32

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4654
    const/16 v39, 0x0

    goto/16 :goto_7

    .line 4693
    .end local v4    # "agentSuccess":Z
    .end local v16    # "token":I
    .end local v32    # "e":Ljava/io/IOException;
    .end local v36    # "nRead":I
    .end local v38    # "pipe":Ljava/io/FileOutputStream;
    .end local v39    # "pipeOkay":Z
    .end local v41    # "toRead":I
    .end local v42    # "toCopy":J
    :cond_19
    if-nez v35, :cond_4

    .line 4694
    const-string v5, "RestoreEngine"

    const-string v7, "[discarding file content]"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v12, 0x1ff

    add-long/2addr v8, v12

    const-wide/16 v12, -0x200

    and-long v30, v8, v12

    .line 4696
    .local v30, "bytesToConsume":J
    :goto_a
    const-wide/16 v8, 0x0

    cmp-long v5, v30, v8

    if-lez v5, :cond_4

    .line 4697
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v5, v5

    int-to-long v8, v5

    cmp-long v5, v30, v8

    if-lez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v0, v5

    move/from16 v41, v0

    .line 4699
    .restart local v41    # "toRead":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v5, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v36, v0

    .line 4700
    .local v36, "nRead":J
    const-wide/16 v8, 0x0

    cmp-long v5, v36, v8

    if-ltz v5, :cond_1a

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    add-long v8, v8, v36

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 4701
    :cond_1a
    const-wide/16 v8, 0x0

    cmp-long v5, v36, v8

    if-lez v5, :cond_4

    .line 4702
    sub-long v30, v30, v36

    .line 4703
    goto :goto_a

    .line 4697
    .end local v36    # "nRead":J
    .end local v41    # "toRead":I
    :cond_1b
    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v41, v0

    goto :goto_b

    .line 4722
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v30    # "bytesToConsume":J
    .end local v35    # "okay":Z
    .end local v40    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method sendEndRestore()V
    .locals 3

    .prologue
    .line 5490
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 5492
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5498
    :cond_0
    :goto_0
    return-void

    .line 5493
    :catch_0
    move-exception v0

    .line 5494
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RestoreEngine"

    const-string v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5495
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5478
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 5481
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5487
    :cond_0
    :goto_0
    return-void

    .line 5482
    :catch_0
    move-exception v0

    .line 5483
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RestoreEngine"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5484
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendStartRestore()V
    .locals 3

    .prologue
    .line 5467
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 5469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5475
    :cond_0
    :goto_0
    return-void

    .line 5470
    :catch_0
    move-exception v0

    .line 5471
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RestoreEngine"

    const-string v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5472
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4726
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 4727
    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .locals 9
    .param p1, "size"    # J
    .param p3, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x200

    .line 4941
    add-long v4, p1, v6

    rem-long v2, v4, v6

    .line 4942
    .local v2, "partial":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 4943
    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    .line 4947
    .local v1, "needed":I
    new-array v0, v1, [B

    .line 4948
    .local v0, "buffer":[B
    const/4 v4, 0x0

    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 4949
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 4952
    .end local v0    # "buffer":[B
    .end local v1    # "needed":I
    :cond_0
    return-void

    .line 4950
    .restart local v0    # "buffer":[B
    .restart local v1    # "needed":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 4744
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v1, :cond_0

    .line 4747
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 4752
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4754
    const-string v1, "RestoreEngine"

    const-string v2, "Killing host process"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4762
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 4764
    :cond_0
    return-void

    .line 4757
    :cond_1
    :try_start_1
    const-string v1, "RestoreEngine"

    const-string v2, "Not killing after full restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4759
    :catch_0
    move-exception v0

    .line 4760
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RestoreEngine"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method tearDownPipes()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4730
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 4732
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4733
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 4734
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4735
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4739
    :goto_0
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 4741
    :cond_0
    return-void

    .line 4736
    :catch_0
    move-exception v0

    .line 4737
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "RestoreEngine"

    const-string v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
