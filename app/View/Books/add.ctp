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
                <li class="active">
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
                    <a class="navbar-brand">Add book</a>
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="content">
                                <?php echo $this->Form->create('Book', array('type' => 'file')); ?>
                                <fieldset>
                                    <?php
                                    echo $this->Form->input('avatar', array(
                                        'type' => 'file',
                                        'label' => 'Please Upload a book cover picture'
                                    ));
                                    echo $this->Form->input('bookname');
                                    echo $this->Form->input('publisher');
                                    echo $this->Form->input('author');
                                    echo $this->Form->input('pubyear');
                                    echo $this->Form->input('catagory');
                                    echo $this->Form->input('summary');
                                    echo $this->Form->input('user_id');
                                    ?>
                                </fieldset>
                                <?php echo $this->Form->end(('Submit')); ?>
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
</div>
