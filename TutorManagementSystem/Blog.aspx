<%@ Page Title="" Language="C#" MasterPageFile="~/TMS.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="TutorManagementSystem.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ======= Blog Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Blog</h2>

                <ol>
                    <li><a href="index.html">Home</a></li>
                    <li>Blog</li>
                </ol>
            </div>

        </div>
    </section>
    <!-- End Blog Section -->

    <!-- ======= Blog Section ======= -->
    <section class="blog" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
        <div class="container">

            <div class="row">

                <div class="col-lg-8 entries">

                    <article class="entry">

                        <div class="entry-img">
                            <img src="assets/img/blog-post-1.jpg" alt="Insights into Modern Technologies" class="img-fluid">
                        </div>

                        <h2 class="entry-title">
                            <a href="blog-single.html">Exploring the Future: Innovations Shaping Tomorrow's World</a>
                        </h2>

                        <div class="entry-meta">
                            <ul>
                                <li class="d-flex align-items-center"><i class="icofont-user"></i><a href="blog-single.html">Jane Smith</a></li>
                                <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i><a href="blog-single.html"><time datetime="2025-01-10">Jan 10, 2025</time></a></li>
                                <li class="d-flex align-items-center"><i class="icofont-comment"></i><a href="blog-single.html">18 Comments</a></li>
                            </ul>
                        </div>

                        <div class="entry-content">
                            <p>
                                The rapid evolution of technology is reshaping industries, unlocking new possibilities, and addressing challenges once thought insurmountable. From AI-driven solutions to sustainable innovations, the future holds exciting opportunities for growth and development.
      Dive into how groundbreaking advancements are transforming lives and driving progress worldwide.
                            </p>
                            <div class="read-more">
                                <a href="blog-single.html">Read More</a>
                            </div>
                        </div>

                    </article>
                    <!-- End blog entry -->


                    <article class="entry">

                        <div class="entry-img">
                            <img src="assets/img/blog-post-2.jpg" alt="Innovations in Technology" class="img-fluid">
                        </div>

                        <h2 class="entry-title">
                            <a href="blog-single.html">Revolutionizing Technology: Key Trends for a Smarter Tomorrow</a>
                        </h2>

                        <div class="entry-meta">
                            <ul>
                                <li class="d-flex align-items-center"><i class="icofont-user"></i><a href="blog-single.html">Jane Doe</a></li>
                                <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i><a href="blog-single.html"><time datetime="2025-01-10">Jan 10, 2025</time></a></li>
                                <li class="d-flex align-items-center"><i class="icofont-comment"></i><a href="blog-single.html">15 Comments</a></li>
                            </ul>
                        </div>

                        <div class="entry-content">
                            <p>
                                From AI advancements to blockchain implementations, technological trends are shaping the future in extraordinary ways. Explore how these innovations are impacting industries and transforming the way we live, work, and connect.
                            </p>
                            <div class="read-more">
                                <a href="blog-single.html">Read More</a>
                            </div>
                        </div>

                    </article>
                    <!-- End blog entry -->

                    <article class="entry">

                        <div class="entry-img">
                            <img src="assets/img/blog-post-3.jpg" alt="Breaking Barriers with Science" class="img-fluid">
                        </div>

                        <h2 class="entry-title">
                            <a href="blog-single.html">Breaking Barriers: How Science is Changing the Impossible</a>
                        </h2>

                        <div class="entry-meta">
                            <ul>
                                <li class="d-flex align-items-center"><i class="icofont-user"></i><a href="blog-single.html">Emily Smith</a></li>
                                <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i><a href="blog-single.html"><time datetime="2025-01-10">Jan 10, 2025</time></a></li>
                                <li class="d-flex align-items-center"><i class="icofont-comment"></i><a href="blog-single.html">20 Comments</a></li>
                            </ul>
                        </div>

                        <div class="entry-content">
                            <p>
                                With scientific breakthroughs in fields like medicine, energy, and space exploration, the boundaries of what’s possible are being pushed further than ever. Discover the latest achievements redefining our future.
                            </p>
                            <div class="read-more">
                                <a href="blog-single.html">Read More</a>
                            </div>
                        </div>

                    </article>
                    <!-- End blog entry -->

                    <article class="entry">

                        <div class="entry-img">
                            <img src="assets/img/blog-post-4.jpg" alt="Sustainability and Growth" class="img-fluid">
                        </div>

                        <h2 class="entry-title">
                            <a href="blog-single.html">Sustainability and Innovation: Building a Better Future</a>
                        </h2>

                        <div class="entry-meta">
                            <ul>
                                <li class="d-flex align-items-center"><i class="icofont-user"></i><a href="blog-single.html">Michael Brown</a></li>
                                <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i><a href="blog-single.html"><time datetime="2025-01-10">Jan 10, 2025</time></a></li>
                                <li class="d-flex align-items-center"><i class="icofont-comment"></i><a href="blog-single.html">18 Comments</a></li>
                            </ul>
                        </div>

                        <div class="entry-content">
                            <p>
                                Balancing economic growth with environmental responsibility is the key to a sustainable future. Learn how innovation is driving sustainable solutions across industries, creating a greener planet for generations to come.
                            </p>
                            <div class="read-more">
                                <a href="blog-single.html">Read More</a>
                            </div>
                        </div>

                    </article>
                    <!-- End blog entry -->

                    <!-- End blog entry -->

                    <div class="blog-pagination">
                        <ul class="justify-content-center">
                            <li class="disabled"><i class="icofont-rounded-left"></i></li>
                            <li><a href="#">1</a></li>
                            <li class="active"><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i></a></li>
                        </ul>
                    </div>

                </div>
                <!-- End blog entries list -->

                <div class="col-lg-4">
                    <div class="sidebar">

                        <h3 class="sidebar-title">Search</h3>
                        <div class="sidebar-item search-form">
                            <%--  <form action="">
                  <input type="text">
                  <button type="submit"><i class="icofont-search"></i></button>
                </form>--%>
                        </div>
                        <!-- End sidebar search formn-->

                        <h3 class="sidebar-title">Categories</h3>
                        <div class="sidebar-item categories">
                            <ul>
                                <li><a href="#">General <span>(25)</span></a></li>
                                <li><a href="#">Lifestyle <span>(12)</span></a></li>
                                <li><a href="#">Travel <span>(5)</span></a></li>
                                <li><a href="#">Design <span>(22)</span></a></li>
                                <li><a href="#">Creative <span>(8)</span></a></li>
                                <li><a href="#">Educaion <span>(14)</span></a></li>
                            </ul>

                        </div>
                        <!-- End sidebar categories-->

                        <h3 class="sidebar-title">Recent Posts</h3>
                        <div class="sidebar-item recent-posts">
                            <div class="post-item clearfix">
                                <img src="assets/img/recent-posts-1.jpg" alt="AI Innovations in 2025">
                                <h4><a href="blog-single.html">AI Innovations: Transforming the Future</a></h4>
                                <time datetime="2025-01-08">Jan 8, 2025</time>
                            </div>

                            <div class="post-item clearfix">
                                <img src="assets/img/recent-posts-2.jpg" alt="Sustainable Technologies for a Greener Planet">
                                <h4><a href="blog-single.html">Sustainable Tech: Building a Greener Planet</a></h4>
                                <time datetime="2025-01-06">Jan 6, 2025</time>
                            </div>

                            <div class="post-item clearfix">
                                <img src="assets/img/recent-posts-3.jpg" alt="Top Cybersecurity Trends of 2025">
                                <h4><a href="blog-single.html">Top Cybersecurity Trends to Watch in 2025</a></h4>
                                <time datetime="2025-01-04">Jan 4, 2025</time>
                            </div>

                            <div class="post-item clearfix">
                                <img src="assets/img/recent-posts-4.jpg" alt="Breakthroughs in Renewable Energy">
                                <h4><a href="blog-single.html">Renewable Energy: Breakthroughs and Challenges</a></h4>
                                <time datetime="2025-01-02">Jan 2, 2025</time>
                            </div>

                            <div class="post-item clearfix">
                                <img src="assets/img/recent-posts-5.jpg" alt="Impact of Blockchain in Modern Business">
                                <h4><a href="blog-single.html">Blockchain: Revolutionizing Modern Business</a></h4>
                                <time datetime="2024-12-30">Dec 30, 2024</time>
                            </div>
                        </div>

                        <!-- End sidebar recent posts-->

                        <h3 class="sidebar-title">Tags</h3>
                        <div class="sidebar-item tags">
                            <ul>
                                <li><a href="#">App</a></li>
                                <li><a href="#">IT</a></li>
                                <li><a href="#">Business</a></li>
                                <li><a href="#">Business</a></li>
                                <li><a href="#">Mac</a></li>
                                <li><a href="#">Design</a></li>
                                <li><a href="#">Office</a></li>
                                <li><a href="#">Creative</a></li>
                                <li><a href="#">Studio</a></li>
                                <li><a href="#">Smart</a></li>
                                <li><a href="#">Tips</a></li>
                                <li><a href="#">Marketing</a></li>
                            </ul>

                        </div>
                        <!-- End sidebar tags-->

                    </div>
                    <!-- End sidebar -->

                </div>
                <!-- End blog sidebar -->

            </div>
            <!-- End .row -->

        </div>
        <!-- End .container -->

    </section>
    <!-- End Blog Section -->
</asp:Content>
