require File.dirname(__FILE__) + '/../spec_helper'

describe UrlPolicy do
  it "should have an instance" do
    UrlPolicy.instance.should_not be_nil
  end

  it "should know the default route" do
    UrlPolicy.instance.url_for(:controller => 'articles', :action => 'index').should == '/'
  end

  it "#url_for(contents(:article3)) should == /2004/06/01/article-3" do
    UrlPolicy.instance.url_for(contents(:article3)).should == '/articles/2004/06/01/article-3'
  end

  it "#url_for(Article.new) should == '/articles/new'" do
    UrlPolicy.instance.url_for(Article.new).should == '/articles/new'
  end

  it "#edit_url_for(contents(:article3)) should == /2004/06/01/article-3/edit" do
    UrlPolicy.instance.edit_url_for(contents(:article3)).should == '/articles/2004/06/01/article-3/edit'
  end

  it "#url_for(Article.new) should == '/articles/new'" do
    UrlPolicy.instance.edit_url_for(Article.new).should == '/articles/new'
  end
end