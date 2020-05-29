require 'rake'
require 'erb'

files = File.new(File.join(pwd, "MANIFEST"), "r").read.split("\n")

desc "install the dotfiles into user's home directory"
task :install do
#  install_rbenv_and_plugins
#  install_oh_my_zsh
#  switch_to_zsh

  files.each do |file|
    Installer.new.symlink(File.join(pwd, file), target_path(file))
  end
end

desc "Remove all dotfies"
task :uninstall do
  files.each do |file|
  #  Installer.new.unlink(target_path(file))
    FileUtils.rm target_path(file)
  end
end

class Installer
  def symlink(target, link)
    if File.symlink?(link)
      unlink(link)
    end
    puts "Symlinking #{link} => #{target}"
    File.symlink(target, link)
  end

  def delete_symlink(link)
    unlink(link) if File.symlink?(link)
  end

  def unlink(link)
    if File.exist?(link)
      descriptor = File.symlink?(link) ? "symlink" : "file"
      puts "Deleting #{descriptor} #{link}"
      File.unlink(link)
    end
  end
end

def pwd; File.dirname(__FILE__); end
def target_path(file)
  File.join(ENV["HOME"], ".#{file}")
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file.sub(/\.erb$/, '')}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub(/\.erb$/, '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub(/\.erb$/, '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  elsif file =~ /zshrc$/ # copy zshrc instead of link
    puts "copying ~/.#{file}"
    system %Q{cp "$PWD/#{file}" "$HOME/.#{file}"}
  else
    puts "linking ~/.#{file}"
    system %Q{ln -sf "$PWD/#{file}" "$HOME/.#{file}"}
  end
end

def switch_to_zsh
  if ENV["SHELL"] =~ /zsh/
    puts "using zsh"
  else
    print "switch to zsh? (recommended) [ynq] "
    case $stdin.gets.chomp
    when 'y'
      puts "switching to zsh"
      system %Q{chsh -s `which zsh`}
    when 'q'
      exit
    else
      puts "skipping zsh"
    end
  end
end

def install_oh_my_zsh
  if File.exist?(File.join(ENV['HOME'], ".oh-my-zsh"))
    puts "found ~/.oh-my-zsh"
  else
    print "install oh-my-zsh? [ynq] "
    case $stdin.gets.chomp
    when 'y'
      puts "installing oh-my-zsh"
      system %Q{git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"}
    when 'q'
      exit
    else
      puts "skipping oh-my-zsh, you will need to change ~/.zshrc"
    end
  end
end

def install_rbenv_and_plugins
  if File.exist?(File.join(ENV["HOME"], ".rbenv"))
    puts "found .rbenv"
  else
    print "instal rbenv?"
    case $stdin.gets.chomp
    when 'y'
      puts "installing rbenv"
      system %Q{git clone https://github.com/sstephenson/rbenv.git  "$HOME/.rbenv"}
    when 'q'
      exit
    else
      puts "skipping rbenv"
    end
  end
end
