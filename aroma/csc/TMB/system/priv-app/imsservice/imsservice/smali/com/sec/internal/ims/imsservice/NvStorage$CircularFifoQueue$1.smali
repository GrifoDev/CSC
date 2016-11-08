.class Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;
.super Ljava/lang/Object;
.source "NvStorage.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private index:I

.field private isFirst:Z

.field private lastReturnedIndex:I

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)V
    .locals 1

    .prologue
    .line 735
    .local p0, "this":Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;, "Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue.1;"
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->start:I
    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$000(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->index:I

    .line 738
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->lastReturnedIndex:I

    .line 739
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->full:Z
    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$100(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->isFirst:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 742
    .local p0, "this":Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;, "Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue.1;"
    iget-boolean v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->isFirst:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->index:I

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->end:I
    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$200(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, "this":Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;, "Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue.1;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 749
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->isFirst:Z

    .line 750
    iget v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->index:I

    iput v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->lastReturnedIndex:I

    .line 751
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    iget v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->index:I

    # invokes: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->increment(I)I
    invoke-static {v0, v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$300(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->index:I

    .line 752
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->elements:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$400(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;, "Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue.1;"
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 756
    iget v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->lastReturnedIndex:I

    if-ne v1, v5, :cond_0

    .line 757
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 761
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->lastReturnedIndex:I

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->start:I
    invoke-static {v2}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$000(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 762
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    invoke-virtual {v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->remove()Ljava/lang/Object;

    .line 763
    iput v5, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->lastReturnedIndex:I

    .line 789
    :goto_0
    return-void

    .line 767
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->lastReturnedIndex:I

    add-int/lit8 v0, v1, 0x1

    .line 768
    .local v0, "pos":I
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->start:I
    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$000(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)I

    move-result v1

    iget v2, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->lastReturnedIndex:I

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->end:I
    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$200(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 770
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$400(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$400(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->lastReturnedIndex:I

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->end:I
    invoke-static {v4}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$200(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    :cond_2
    iput v5, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->lastReturnedIndex:I

    .line 785
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->end:I
    invoke-static {v3}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$200(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)I

    move-result v3

    # invokes: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->decrement(I)I
    invoke-static {v2, v3}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$600(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;I)I

    move-result v2

    # setter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->end:I
    invoke-static {v1, v2}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$202(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;I)I

    .line 786
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$400(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->end:I
    invoke-static {v2}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$200(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)I

    move-result v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 787
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # setter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->full:Z
    invoke-static {v1, v6}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$102(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;Z)Z

    .line 788
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    iget v2, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->index:I

    # invokes: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->decrement(I)I
    invoke-static {v1, v2}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$600(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;I)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->index:I

    goto :goto_0

    .line 773
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->end:I
    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$200(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 774
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->maxElements:I
    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$500(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 775
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$400(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$400(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v6

    aput-object v3, v1, v2

    .line 776
    const/4 v0, 0x0

    goto :goto_1

    .line 778
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$400(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # invokes: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->decrement(I)I
    invoke-static {v2, v0}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$600(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # getter for: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$400(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 779
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue$1;->this$0:Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    # invokes: Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->increment(I)I
    invoke-static {v1, v0}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;->access$300(Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;I)I

    move-result v0

    goto :goto_1
.end method
