<?php
    include("includes/header.php");
    if (!$session->is_signed_in()) {
        redirect("login.php");
    }
    if (empty($_GET['id'])) {
        redirect("photos.php");
    }
    $comments = Comment::find_the_comments($_GET['id']);
?>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <?php
        include ("includes/top_nav.php");
        include ("includes/side_nav.php");
    ?>
</nav>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Photos</h1>
                <p class="bg-success"><?php echo $message; ?></p>
                <div class="col-md-12">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Author</th>
                                <th>Body</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($comments as $comment): ?>
                            <tr>
                                <td><?php echo $comment->id; ?></td>
                                <td><?php echo $comment->author; ?>
                                    <div class="actions_links">
                                        <a href="delete_comment_photo.php?id=<?php echo $comment->id; ?>">Delete</a>
                                    </div>
                                </td>
                                <td><?php echo $comment->body; ?></td>                            
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include("includes/footer.php");

