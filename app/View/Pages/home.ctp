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
                <li class="active">
                    <a href="/boiHat">
                        <i class="pe-7s-home"></i>
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
                    <a href="/boiHat/logout" >
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
                    <a class="navbar-brand">Home Page</a>
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

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <?php foreach ($books as $book): ?>
                        <div class="col-md-8">
                            <div class="card">
                                <div class="content">
                                    <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                                    <legend><?php echo h($book['User']['username']); ?> <?php echo ('has uploaded'); ?></legend>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <?php echo $this->Html->image('uploads/' . $book['Book']['avatar']); ?>
                                        </div>
                                        <div class="col-md-6">
                                            <h4 class="text-left"><?php echo h($book['Book']['bookname']); ?></h4>
                                            <h5 class="text-left"><?php echo h($book['Book']['author']); ?></h5>
                                            <h5 class="text-left">Summary:- </h5>
                                            <h6 class="text-justify"><?php echo h($book['Book']['summary']); ?></h6>
                                        </div>
                                    </div>
                                    <hr>

                                    
                                    <div class="card my-10">
                                        <div class="card-body">
                                            <?php echo $this->Form->create('Comment'); ?>
                                            <fieldset>
                                                <?php echo $this->Form->input('remark'); ?>
                                            </fieldset>
                                            <?php echo $this->Form->end(('Submit')); ?>
                                        </div>
                                    </div>
                                    

                                    <div class="media mb-10">
                                        <?php foreach ($comments as $com): ?>
                                            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                                            <div class="media-body">
                                                <h5 class="mt-0">Commenter Name</h5>
                                                <?php echo h($com['Comment']['remark']); ?>
                                            </div>
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <div class="content">
                                    <h3>For ADD only</h3>
                                    <img class="img-thumbnail" src="img/sidebar-3.jpg" alt="..."/>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</div>

