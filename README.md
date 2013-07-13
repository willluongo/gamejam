W&B Game Jam
============

Will and Bryce Game Jam

Installation
------------

**OSX**

So you want to rvm, eh? Well on OS X 10.8.x you will run into problems! 

1. Install homebrew
2. `brew install https://raw.github.com/Homebrew/homebrew-dupes/master/apple-gcc42.rb`
3. Install rvm
4. `rvm install 1.9.3`
5. `bundle install`
6. `ruby main.rb`

If you run into trouble with installing 1.9.3 after fixing the apple gcc bit, just run these all manually:

```
brew install autoconf
brew install automake
brew install libtool
brew install apple-gcc42
brew install libyaml
brew install libxslt
brew install libksba
brew install openssl
```


**Windows**

1. Install ruby 1.9.3 from http://rubyinstaller.org/downloads/
2. Install github for windows http://windows.github.com/
3. Pull the repository
4. `gem install bundler`
5. `bundle install`
6. `ruby main.rb`