# Syllabus Elixir Girls

  * Welcome
  * Getting started
    * Installing Elixir
    * What is Elixir? (First Talk)
    * Introduction to IEx
    * Elixir types
      * Integers
      * Floats
      * Strings
      * Athoms
      * Tuples
      * Lists
      * Maps
    * Pattern matching
  * Let's create our first project (Workshop start)
    * Using mix to create a new project
      ```bash
        mix new orval
      ```
      You will see in your terminal
      ```
      * creating README.md
      * creating .formatter.exs
      * creating .gitignore
      * creating mix.exs
      * creating config
      * creating config/config.exs
      * creating lib
      * creating lib/orval.ex
      * creating test
      * creating test/test_helper.exs
      * creating test/orval_test.exs

      Your Mix project was created successfully.
      You can use "mix" to compile it, test it, and more:

          cd orval
          mix test

      Run "mix help" for more commands.
      ```
      ```
      Intersting note: we decide to use Orval as a project name in honor to Anne-Françoise Pypaert, the first female Trappist brewmaster. You can know more abot her story in this link:
       http://drinkbelgianbeer.com/breweries/meet-anne-francoise-pypaert-the-first-female-trappist-brewmaster
      ```
    * Running our code

      Starts iex in the context of your project—it uses mix to build the application environment and then enters iex
      
      ```bash
      iex -S mix 
      ```

      If your terminal is showing like below you are in the rigth way 👍
      ```
      Erlang/OTP 21 [erts-10.3.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe] [dtrace]

      Compiling 1 file (.ex)
      Generated orval app
      Interactive Elixir (1.8.1) - press Ctrl+C to exit (type h() ENTER for help)
      iex(1)>

      ```

    * Write a FindWord Module
      Open Orval project in your favorite editor
      You should have some tree folder like this

      ```
      |_____build
      |____config
      | |____config.exs
      |____lib
      | |____orval.ex
      |____test
      | |____orval_test.exs
      | |____test_helper.exs
      |____.formatter.exs
      |____.gitignore
      |____mix.exs
      |____README.md
      ```
      Create a new file `find_word.ex` under lib folder. We suggest you install a plugin like: `ElixirLS`
      Open your new file let's start define the name for our module, Every Module in elixir is defined like below 
      ```elixir
      defmodule FindWord do
  
      end
      ```
      Inside FindWord write a function `say_helow`
      ```elixir
      defmodule FindWord do

        def say_hellow do
          IO.puts "Hellow Elixir Girls"
        end
      
      end
      ```

      Now go to your terminal and run `recompile` just to compile our new changes
      ```
        iex(2)> recompile
        :ok
      ```
      Type FindWord.say_hellow
      
    * Refactor into pipelines

`------------------------ after lunch ---------------------------------------------------`

  * What is Phoenix (second talk)
  * Let's create a Blog post app using Phoenix
    * Create a new controller
    * Add a new rote into your router
    * Add your template
    * Go to your browser
    * You did it!
  * Create a REST API in just a few minutes
    * Run this command in your terminal
      ```
      mix phx.gen.html Posts Post posts title:string url:string author:string description:string likes:integer
      ```
      If everything goes well you will get this message
      ```
      * creating lib/delirium_web/controllers/post_controller.ex
      * creating lib/delirium_web/templates/post/edit.html.eex
      * creating lib/delirium_web/templates/post/form.html.eex
      * creating lib/delirium_web/templates/post/index.html.eex
      * creating lib/delirium_web/templates/post/new.html.eex
      * creating lib/delirium_web/templates/post/show.html.eex
      * creating lib/delirium_web/views/post_view.ex
      * creating test/delirium_web/controllers/post_controller_test.exs
      * creating lib/delirium/posts/post.ex
      * creating priv/repo/migrations/20190911150250_create_posts.exs
      * creating lib/delirium/posts.ex
      * injecting lib/delirium/posts.ex
      * creating test/delirium/posts_test.exs
      * injecting test/delirium/posts_test.exs

      Add the resource to your browser scope in lib/delirium_web/router.ex:

          resources "/posts", PostController


      Remember to update your repository by running migrations:

          $ mix ecto.migrate

      ```
      Lets follow the instructions to add the new route, go to router file lib/delirium_web/router.ex and add a new line `resources "/posts", PostController` under scope like below
      ``` 
      scope "/", DeliriumWeb do
        pipe_through :browser # Use the default browser stack

        get "/", PageController, :index

        resources "/posts", PostController

      end
      ```
      **Note: router.ex is in charge to handle all the request that we made

      ```
      mix ecto.migrate
      Compiling 5 files (.ex)
      Generated delirium app
      [info] == Running Delirium.Repo.Migrations.CreatePosts.change/0 forward
      [info] create table posts
      [info] == Migrated in 0.0s
      ```

    * Open your browser /posts
    * Pretty cool right! now you can
      * Create
      * Edit
      * Update
      * Delete
    * Let's have a quit code review and try to figure out what is happening
    * Add a nice view
    * Well done 😀. You have your new blog post using  Elixir and Phoenix    

<!-- # Delirium

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix -->
