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
                                <div class="sidebyside">
                                    <h3>
                                        <?php echo h('Fullname - '), ($user['User']['fullname']), '.'; ?>
                                    </h3>
                                    <br>

                                    <h3>
                                        <?php echo h('Address - '), ($user['User']['address']), '.'; ?>
                                    </h3>
                                    <br>

                                    <h3>
                                        <?php echo h('Date of Birth - '), ($user['User']['dob']), '.'; ?>
                                    </h3>
                                    <br>

                                    <h3>
                                        <?php echo h('Username - '), ($user['User']['username']), '.'; ?>
                                    </h3>
                                    <br>

                                    <h3>
                                        <?php echo h('Email - '), ($user['User']['email']), '.'; ?>
                                    </h3>
                                    <br>

                                    <h3>
                                        <?php echo h('Account created - '), ($user['User']['created']), '.'; ?>
                                    </h3>
                                </div>
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
                                    <img class="avatar border-gray" src="../img/users/face-1.jpg" alt="..."/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>