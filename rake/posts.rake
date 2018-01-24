# coding: utf-8

namespace :posts do
  desc "Create posts with scaffold"
  task :create, [:title] do |t, args|
    args.with_defaults(:date => Time.now.strftime("%Y-%m-%d"))
    posts_title = args[:title]
    posts_date = args[:date]
    posts_content = <<-EOF
---
layout: blog
title: #{posts_title}
type: blog
author: doraemon-master
tags:
- tag
---
your posts content(maybe empty)^_^
    EOF
    if posts_title.nil? == false && posts_title.empty? == false
      create_posts(posts_date, posts_title, posts_content)
    else 
      show_fatal("post #{posts_title} has been created or invalid title.") 
      exit 1
    end
  end
end

def create_posts(posts_date, posts_title, posts_content)
  html_file = "_posts/#{posts_date}-#{posts_title}-posts.md"

  if File::exists?(html_file) then
    show_fatal("file #{html_file} has been created.")
    exit 1
  end
  File.new(html_file, "w").syswrite(posts_content) 

  show_info("#{html_file} is created.")
end