<?php include("includes/header.php"); ?>
<?php
    require_once("admin/includes/init.php");
    $photo = Photo::find_by_id($_GET['id']);
    if (isset($_POST['submit'])) {
        $author = trim($_POST['author']);
        $body = trim($_POST['body']);
        $new_comment = Comment::create_comment($photo->id, $author, $body);
        if ($new_comment && $new_comment->save()) {
            redirect("photo.php?id={$photo->id}");
        } else {
            $message = "Your comment has not been published.";
        }
    } else {
        $author = "";
        $body = "";
    }
    $comments = Comment::find_the_comments($photo->id);
?>
<br><br><br>
<div class="col-lg-12 row">
    <h1><?php echo $photo->title; ?></h1><hr>
    <img class="img-responsive" src="admin/<?php echo $photo->picture_path(); ?>" /><hr>
    <p class="lead"><?php echo $photo->caption; ?></p>
    <p><?php echo $photo->description; ?></p><hr>
    <div class="well">
        <h3>Leave a comment:</h3><br>
        <form role="form" method="post">
            <div class="form-group">
                <label for="author">Author</label>
                <input type="text" name="author" class="form-control">                       
            </div>
            <div class="form-group">
                <label for="body">Comment</label>
                <textarea name="body" class="form-control" rows="5"></textarea>
            </div>
            <button type="submit" name="submit" class="btn btn-primary">Submit</button>
        </form>
    </div><br>
    <h3>All comments:</h3><br>
    <?php foreach ($comments as $comment): ?>
        <div class="media well">
            <div class="media-body">
                <h4 class="media-heading"><?php echo $comment->author; ?></h4>
                <?php echo $comment->body; ?>
            </div>
        </div>
    <?php endforeach; ?>
</div>
<?php include("includes/footer.php");