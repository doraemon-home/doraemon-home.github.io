# coding: utf-8

task default: %w[serve]

desc "Serve simply"
task :serve do
  show_info "欢迎使用自动构建工具"
  sh "bundle exec jekyll serve --future"
end
