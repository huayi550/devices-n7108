.class Landroid/webkit/WebViewClassic$StylusEventListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private final DELTA:I

.field private final HORIZONAL_THRESHOLD:I

.field private final VERTICAL_THRESHOLD:I

.field private mDirLTR:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mSelectionSound:Landroid/media/SoundPool;

.field private mSoundId:I

.field private mStartX:F

.field private mStartY:F

.field private final soundURIs:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 12891
    iput-object p1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12892
    iput v1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 12893
    iput v1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 12894
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 12895
    iput v1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 12896
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->DELTA:I

    .line 12897
    const/16 v0, 0x32

    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->VERTICAL_THRESHOLD:I

    .line 12898
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->HORIZONAL_THRESHOLD:I

    .line 12899
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    .line 12902
    const-string v0, "/media/audio/ui/TextSelection.ogg"

    iput-object v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->soundURIs:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12891
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$StylusEventListener;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method

.method private playSound()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f80

    const/4 v4, 0x1

    .line 13071
    iget-object v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 13072
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v4, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    .line 13074
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/TextSelection.ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 13075
    .local v7, soundPath:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    invoke-virtual {v0, v7, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSoundId:I

    .line 13076
    iget-object v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    iget v1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSoundId:I

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 13077
    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 14
    .parameter "event"
    .parameter "clipboardId"

    .prologue
    .line 12908
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 12909
    .local v0, action:I
    const/4 v8, 0x0

    .line 12910
    .local v8, startCurPositionX:I
    const/4 v9, 0x0

    .line 12911
    .local v9, startCurPositionY:I
    const/4 v1, 0x0

    .line 12912
    .local v1, endCurPositionX:I
    const/4 v2, 0x0

    .line 12914
    .local v2, endCurPositionY:I
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    .line 13067
    :cond_0
    :goto_0
    return-void

    .line 12918
    :cond_1
    const-string/jumbo v11, "webview"

    const-string/jumbo v12, "onStylusButtonEvent start"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12920
    packed-switch v0, :pswitch_data_0

    .line 13066
    :cond_2
    :goto_1
    const-string/jumbo v11, "webview"

    const-string/jumbo v12, "onStylusButtonEvent END"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12922
    :pswitch_0
    iget-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    if-eqz v11, :cond_2

    .line 12927
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_6

    .line 12928
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x41a0

    add-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    .line 12929
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    .line 12930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 12953
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    const/high16 v13, 0x4248

    add-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    const/high16 v13, 0x4248

    sub-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_2

    .line 12954
    :cond_4
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 12955
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$9602(Landroid/webkit/WebViewClassic;I)I

    .line 12956
    const-string/jumbo v11, "webview"

    const-string v12, "TextSelection is canceled because of height difference"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12931
    :cond_5
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x41a0

    add-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 12932
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    .line 12933
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    goto :goto_2

    .line 12935
    :cond_6
    iget-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    if-eqz v11, :cond_8

    .line 12936
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_7

    .line 12937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    goto :goto_2

    .line 12938
    :cond_7
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x41a0

    add-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 12939
    const-string/jumbo v11, "webview"

    const-string v12, "TextSelection is canceled because of wrong X position, DirLTR"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12940
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$9602(Landroid/webkit/WebViewClassic;I)I

    .line 12941
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto :goto_2

    .line 12943
    :cond_8
    iget-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    if-nez v11, :cond_3

    .line 12944
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_9

    .line 12945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    goto/16 :goto_2

    .line 12946
    :cond_9
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    const/high16 v12, 0x41a0

    add-float/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    .line 12947
    const-string/jumbo v11, "webview"

    const-string v12, "TextSelection is canceled because of wrong X position, DirRTL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12948
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$9602(Landroid/webkit/WebViewClassic;I)I

    .line 12949
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_2

    .line 12962
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 12964
    const/4 v11, 0x0

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 12965
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 12966
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 12967
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x1

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$9602(Landroid/webkit/WebViewClassic;I)I

    .line 12968
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mActionMove:Z
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$12002(Landroid/webkit/WebViewClassic;Z)Z

    .line 12969
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v11, v11, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v11, :cond_a

    .line 12970
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 12972
    :cond_a
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$9900(Landroid/webkit/WebViewClassic;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 12973
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    .line 12979
    :pswitch_2
    const/4 v3, 0x0

    .line 12980
    .local v3, endX:F
    const/4 v4, 0x0

    .line 12982
    .local v4, endY:F
    iget-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    if-eqz v11, :cond_0

    .line 12985
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 12986
    .local v6, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 12987
    .local v5, offset:Landroid/graphics/Point;
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11, v6, v5}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 12988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 12989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 12991
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    iget v12, v5, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 12992
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    iget v12, v5, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 12993
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_b

    .line 12994
    const/4 v11, 0x0

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 12996
    :cond_b
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_c

    .line 12997
    const/4 v11, 0x0

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 12999
    :cond_c
    iget v11, v5, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    sub-float/2addr v3, v11

    .line 13000
    iget v11, v5, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    sub-float/2addr v4, v11

    .line 13001
    const/4 v11, 0x0

    cmpg-float v11, v3, v11

    if-gez v11, :cond_d

    .line 13002
    const/4 v3, 0x0

    .line 13004
    :cond_d
    const/4 v11, 0x0

    cmpg-float v11, v4, v11

    if-gez v11, :cond_e

    .line 13005
    const/4 v4, 0x0

    .line 13011
    :cond_e
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    iget v12, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v8

    .line 13012
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    iget v12, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v9

    .line 13013
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    float-to-int v12, v3

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    .line 13014
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    float-to-int v12, v4

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    .line 13017
    if-eq v8, v1, :cond_f

    sub-int v11, v8, v1

    const/16 v12, 0xa

    if-ge v11, v12, :cond_10

    sub-int v11, v1, v8

    const/16 v12, 0xa

    if-ge v11, v12, :cond_10

    .line 13018
    :cond_f
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 13019
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$9602(Landroid/webkit/WebViewClassic;I)I

    .line 13020
    const-string/jumbo v11, "webview"

    const-string v12, "TextSelection is canceled because the positions are same."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 13023
    :cond_10
    if-le v8, v1, :cond_11

    .line 13024
    move v10, v1

    .line 13025
    .local v10, temp:I
    move v1, v8

    .line 13026
    move v8, v10

    .line 13030
    .end local v10           #temp:I
    :cond_11
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mStartX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mStartY "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13031
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "endX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " endY "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13032
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "offset.x "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " offset.y "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13033
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startCurPositionX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " startCurPositionY "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13034
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "endCurPositionX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " endCurPositionY "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13048
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v9, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13049
    .local v7, selectRect:Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v11

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    iget-object v12, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v12

    if-ne v11, v12, :cond_12

    .line 13050
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->setUpAdvSelect()Z
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$12100(Landroid/webkit/WebViewClassic;)Z

    .line 13052
    :cond_12
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v11

    const/16 v12, 0x22a

    invoke-virtual {v11, v12, v7}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 13053
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "action_up mSpenTextSelectionMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$9600(Landroid/webkit/WebViewClassic;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13057
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$9602(Landroid/webkit/WebViewClassic;I)I

    .line 13058
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 13063
    .end local v3           #endX:F
    .end local v4           #endY:F
    .end local v5           #offset:Landroid/graphics/Point;
    .end local v6           #rect:Landroid/graphics/Rect;
    .end local v7           #selectRect:Landroid/graphics/Rect;
    :pswitch_3
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 12920
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
