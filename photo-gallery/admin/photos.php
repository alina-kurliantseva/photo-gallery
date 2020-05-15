<?php
    include("includes/header.php");
    if (!$session->is_signed_in()) {
        redirect("login.php");
    }
    $photos = Photo::find_all();
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
                                <th>Photo</th>
                                <th>Id</th>
                                <th>File Name</th>
                                <th>Tittle</th>
                                <th>Size</th>
                                <th>Comments</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($photos as $photo): ?>
                            <tr>
                                <td><img class="admin-photo-thumbnail" src="<?php echo $photo->picture_path(); ?>" />
                                    <div class="actions_links">
                                        <a class="delete_link" href="delete_photo.php?id=<?php echo $photo->id; ?>">Delete</a>&nbsp;
                                        <a href="edit_photo.php?id=<?php echo $photo->id; ?>">Edit</a>&nbsp;
                                        <a href="../photo.php?id=<?php echo $photo->id; ?>">View</a>
                                    </div>
                                </td>
                                <td><?php echo $photo->id; ?></td>
                                <td><?php echo $photo->file_name; ?></td>
                                <td><?php echo $photo->title; ?></td>
                                <td><?php echo $photo->size; ?></td>
                                <td>
                                    <a href="comment_photo.php?id=<?php echo $photo->id; ?>">
                                        <?php
                                            $comments = Comment::find_the_comments($photo->id);
                                            echo count($comments); 
                                        ?>
                                    </a>
                                </td> 
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
