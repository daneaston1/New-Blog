require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? returns true for draft blog post" do
    assert blog_posts(:draft).draft?
   end

   test "draft? returns false for published blog post" do
    refute blog_posts(:published).draft?
   end

   test "draft? returns false for scheduled blog post" do
    refute blog_posts(:scheduled).draft?
   end


  test "published? returns true for published blog post" do
    assert BlogPost.new(published_at: 1.year.ago).published?
  end

  test "published? returns false for draft blog post" do
    refute draft_blog_post.published?
  end

  test "published? returns false for scheduled blog post" do
    refute BlogPost.new(published_at: 1.year.from_now).published?
  end


  test "scheduled? returns true for scheduled blog post" do
    assert BlogPost.new(published_at: 1.year.from_now).scheduled?
  end

  test "scheduled? returns false for draft blog post" do
    refute BlogPost.new(published_at: nil).scheduled?
  end

  test "scheduled? returns false for published blog post" do
    refute BlogPost.new(published_at: 1.year.ago).scheduled?
  end

  def draft_blog_post
    BlogPost.new(published_at: nil)
  end


 #Could use the above, and input  assert draft_blog_post.draft? 
 #instead, using blog_posts.yml file, one of the method, and one as standard. All 3 methods do the same thing, but the blog_posts(:draft) will be most useful, as it pull over more
 #info, eg title etc.
end