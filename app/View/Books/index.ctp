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
                    <a href="user.html">
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
                <li class="active">
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
                    <a class="navbar-brand">All my books</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">
                                <p>Log out</p>
                            </a>
                        </li>
                        <li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="content">
            <div class="container-fluid">
                <?php foreach ($books as $book): ?>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="image">
                                <?php echo $this->Html->image('uploads/' . $book['Book']['avatar']); ?>
                            </div>
                            <h4><?php echo h($book['Book']['bookname']); ?></h4>
                            <h5><?php echo h($book['Book']['author']); ?></h5>

                            <div class="actions">
                                <ul>
                                    <li><?php echo $this->Html->link(('View'), array('action' => 'view', $book['Book']['id'])); ?></li>
                                    <li><?php echo $this->Html->link(('Edit'), array('action' => 'edit', $book['Book']['id'])); ?></li>
                                    <li><?php echo $this->Form->postLink(('Delete'), array('action' => 'delete', $book['Book']['id']), array('confirm' => __('Are you sure you want to delete # %s?', $book['Book']['id']))); ?></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>
