.class Lcom/android/internal/widget/SPenGestureView$7;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SPenGestureView;->injectionKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SPenGestureView;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iput p2, p0, Lcom/android/internal/widget/SPenGestureView$7;->val$key:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v1, v1, Lcom/android/internal/widget/SPenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 833
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v1, v1, Lcom/android/internal/widget/SPenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 834
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v1, v1, Lcom/android/internal/widget/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 838
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    iget v1, p0, Lcom/android/internal/widget/SPenGestureView$7;->val$key:I

    const/16 v2, 0x4002

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(II)V

    .line 845
    :cond_0
    return-void
.end method