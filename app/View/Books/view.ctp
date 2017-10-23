<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="img/sidebar-4.jpg">
        <!--
        change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        add an image using data-image tag
        -->
        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="/boiHat" class="simple-text">
                    Boi Haat
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="/boiHat">
                        <i class="pe-7s-graph"></i>
                        <p>Home Page</p>
                    </a>
                </li>
                <li>
                    <a href="/boiHat/users/view">
                        <i class="pe-7s-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                <li>
                    <a href="/boiHat/books/add">
                        <i class="pe-7s-plus"></i>
                        <p>Add book</p>
                    </a>
                </li>
                <li>
                    <a href="/boiHat/books">
                        <i class="pe-7s-news-paper"></i>
                        <p>All my books</p>
                    </a>
                </li>
                <li>
                    <a href="notifications.html">
                        <i class="pe-7s-bell"></i>
                        <p>Notifications</p>
                    </a>
                </li>
                <li>
                    <a href="<?php $this->Html->link("Logout", array('controller' => 'users', 'action' => 'logout')); ?>">
                        <i class="pe-7s-switch"></i>
                        <p>Logout</p>
                    </a>
                </li>

            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand">View Book</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <?php echo $this->Html->link("Logout", array('controller' => 'users', 'action' => 'logout')); ?>
                        </li>
                        <li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Post Content Column -->
        <div class="col-lg-8">

            <h2 class="mt-4"><?php echo h($book['Book']['bookname']); ?></h2>

            <h4 class="mt-4">by <?php echo h($book['Book']['author']); ?></h4>

            <hr>

            <!-- Date/Time -->
            <p>Posted on <?php echo h($book['Book']['created']); ?></p>

            <hr>

            <!-- Preview Image -->
            <?php echo $this->Html->image('uploads/' . $book['Book']['avatar']); ?>

            <hr>

            <dt><?php echo ('Publisher:-'); ?></dt>
            <dd>
                <?php echo h($book['Book']['publisher']); ?>
                &nbsp;
            </dd>

            <dt><?php echo ('Pubyear:-'); ?></dt>
            <dd>
                <?php echo h($book['Book']['pubyear']); ?>
                &nbsp;
            </dd>
            <dt><?php echo ('Rating:-'); ?></dt>
            <dd>
                <?php echo h($book['Book']['rating']); ?>
                &nbsp;
            </dd>
            <dt><?php echo ('Catagory:-'); ?></dt>
            <dd>
                <?php echo h($book['Book']['catagory']); ?>
                &nbsp;
            </dd>
            <dt><?php echo ('Summary:-'); ?></dt>
            <dd>
                <?php echo h($book['Book']['summary']); ?>
                &nbsp;
            </dd>

            <hr>

            <!-- Comments Form -->
            <div class="card my-4">
                <h5 class="card-header">Leave a Comment:</h5>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>

            <!-- Single Comment -->
            <div class="media mb-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                    <h5 class="mt-0">Commenter Name</h5>
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                </div>
            </div>
        </div>
    </div>
</div>
