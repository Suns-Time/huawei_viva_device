.class Landroid/media/dolby/DolbyMobileAudioEffectClient$1;
.super Ljava/lang/Object;
.source "DolbyMobileAudioEffectClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dolby/DolbyMobileAudioEffectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;


# direct methods
.method constructor <init>(Landroid/media/dolby/DolbyMobileAudioEffectClient;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 228
    const-string v0, "DolbyMobileAudioEffectClient"

    const-string v1, "ServiceConnection.onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-static {p2}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileSystemInterface;

    move-result-object v1

    # setter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;
    invoke-static {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$002(Landroid/media/dolby/DolbyMobileAudioEffectClient;Landroid/media/dolby/IDolbyMobileSystemInterface;)Landroid/media/dolby/IDolbyMobileSystemInterface;

    .line 234
    :try_start_10
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    # getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;
    invoke-static {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$000(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/IDolbyMobileSystemInterface;

    move-result-object v0

    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    # getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    invoke-static {v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$100(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->registerCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_38

    .line 240
    :goto_1f
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    # getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;
    invoke-static {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$200(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/DolbyMobileClientCallbacks;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 242
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    # getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;
    invoke-static {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$200(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/DolbyMobileClientCallbacks;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/dolby/DolbyMobileClientCallbacks;->onServiceConnected()V

    .line 245
    :cond_30
    const-string v0, "DolbyMobileAudioEffectClient"

    const-string v1, "CONNECTED: DMAudioEffectService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 236
    :catch_38
    move-exception v0

    goto :goto_1f
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 250
    const-string v0, "DolbyMobileAudioEffectClient"

    const-string v1, "ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :try_start_7
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    # getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;
    invoke-static {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$000(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/IDolbyMobileSystemInterface;

    move-result-object v0

    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    # getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    invoke-static {v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$100(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->unregisterCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_2f

    .line 260
    :goto_16
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    # getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;
    invoke-static {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$200(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/DolbyMobileClientCallbacks;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 262
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;->this$0:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    # getter for: Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;
    invoke-static {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->access$200(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/DolbyMobileClientCallbacks;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/dolby/DolbyMobileClientCallbacks;->onServiceDisconnected()V

    .line 265
    :cond_27
    const-string v0, "DolbyMobileAudioEffectClient"

    const-string v1, "/ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 255
    :catch_2f
    move-exception v0

    goto :goto_16
.end method
