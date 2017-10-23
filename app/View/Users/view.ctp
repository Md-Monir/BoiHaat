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
                <li class="active">
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
                    <a class="navbar-brand">View Profile</a>
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
                    <div class="col-md-8">
                        <div class="card">
                            <div class="content">
                                <dl>
                                    <dt><?php echo __('Fullname'); ?></dt>
                                    <dd>
                                        <?php echo h($user['User']['fullname']); ?>
                                        &nbsp;
                                    </dd>
                                    <dt><?php echo __('Address'); ?></dt>
                                    <dd>
                                        <?php echo h($user['User']['address']); ?>
                                        &nbsp;
                                    </dd>
                                    <dt><?php echo __('Dob'); ?></dt>
                                    <dd>
                                        <?php echo h($user['User']['dob']); ?>
                                        &nbsp;
                                    </dd>
                                    <dt><?php echo __('Username'); ?></dt>
                                    <dd>
                                        <?php echo h($user['User']['username']); ?>
                                        &nbsp;
                                    </dd>
                                    <dt><?php echo __('Email'); ?></dt>
                                    <dd>
                                        <?php echo h($user['User']['email']); ?>
                                        &nbsp;
                                    </dd>
                                    <dt><?php echo __('Password'); ?></dt>
                                    <dd>
                                        <?php echo h($user['User']['password']); ?>
                                        &nbsp;
                                    </dd>
                                    <dt><?php echo __('Created'); ?></dt>
                                    <dd>
                                        <?php echo h($user['User']['created']); ?>
                                        &nbsp;
                                    </dd>
                                    <dt><?php echo __('Modified'); ?></dt>
                                    <dd>
                                        <?php echo h($user['User']['modified']); ?>
                                        &nbsp;
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                    <img class="avatar border-gray" src="http://www.worthwild.com/assets/img-mas-02-b8b21065df45885c91cf32d318f8ad69.jpg" alt="..."/>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>