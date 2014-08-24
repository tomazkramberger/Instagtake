[ ![Codeship Status for tomazkramberger/Instagtake](https://codeship.io/projects/2d7374e0-0db0-0132-bc90-6a1e79364744/status)](https://codeship.io/projects/32320)

About Instagtake on Github
===============================

This repository contains the current source code of Instagtake. If you're having issues with the latest Instagtake version, feel free to log them at the [issue tracker](https://github.com/tomazkramberger/Instagtake/issues). 

This master branch contains the source for the currently released Instagtake.

Instagtake is an app which main goal is downloading photos from Instagram. You can login with your Instagram account only and then you will see the whole magic. 

If you want to try, please go to [Instagtake](http://instagtake.herokuapp.com) 

* For those who doesn't have Instagram account and don't plan to create one, you can use test account:

  username: instagtakeapp
  password: | contact me -> tomazkramberger@gmail.com |

If you want to clone from github app and try it, first you must do some things.

    1.) Move file devise_template.rb to config/initializers/ and rename it to: devise.rb

        Replace [CLIENT_ID] with client_id provided by Instagram
        Replace [SECRET_ID] with secret_id provided by Instagram

    2.) Move file instagram_template.rb to config/initializers/ and rename it to: instagram.rb

        Replace [CLIENT_ID] with client_id provided by Instagram
        Replace [ACCESS_TOKEN] with secret_id which you can get here:

          https://instagram.com/oauth/authorize/?client_id=[CLIENT_ID_HERE]&redirect_uri=http://localhost&response_type=token
          
Features
===============================

* Download photos from instagram

* Search by users or hashtags

* List followers and download their photos

* List users you are following and their photos

* More features will be added soon