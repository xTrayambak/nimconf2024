import nimib, nimiSlides

nbInit(theme = revealTheme)

setSlidesTheme(Black)

slide:
  bigText: "Ferus — a web engine written in the Nim programming language"
  nbText: "Trayambak Rai — xTrayambak"

slide:
  slide:
    nbText: "The state of Ferus"

    fragmentFadeIn:
      columns:
        column:
          nbImage("assets/old_layout.png")
        
        column:
          nbText: "I began work on Ferus in the summer of 2023, just for fun."
    
  slide:
    fragmentFadeIn:
      columns:
        column:
          nbImage("assets/old_layout_2.png")

        column:
          nbText: "It was naive of me to think that this'd be a linear, cookie-cutter task. And that's why we're here now!"

  slide:
    fragmentFadeIn:
      columns:
        column:
          nbImage("assets/nim-ferus.webp")

        column:
          nbText: "Over the course of the year, I've written 10.8K lines of code for Ferus and we're slowly getting to a place things have started to work."
  
  slide:
    nbText: "The KDE Project's website in Ferus"

    column:
      nbImage("assets/kde-ferus.webp")

  slide:
    nbText: "The Freedesktop Project's website in Ferus"

    column:
      nbImage("assets/freedesktop-ferus.webp")
        
  slide:
    nbText: "Drew Devault's Blog post on web engines in Ferus"

    column:
      nbImage("assets/drew-ferus.webp")

  slide:
    nbText: "SourceHut in Ferus"

    column:
      nbImage("assets/srht-ferus.webp")
  
  slide:
    fragmentFadeIn:
      nbText: "However, this is a bit draining to do on my own."

    fragmentFadeIn:
      nbText: "That's exactly why I've decided to change my course of actions a little bit."

  slide:
    nbText: "Change of plans - what now?"

    fragmentFadeIn:
      nbText: "I've been working away at Bali and Mirage. The first one is a JavaScript engine built on top of the second, which is a bytecode interpreter."

    fragmentFadeIn:
      nbText: "I'm also constantly improving ferusgfx and stylus."

  slide:
    nbText: "Are we compliant yet?"
    fragmentFadeIn:
      nbText: "As of the time of writing this slide (4th of October), we're passing 2.4% of all the tests in the Test262 suite in the master branch. That's ~1100 tests."

    fragmentFadeIn:
      nbText: "It might not seem like a lot (because it isn't), but it's about as much as I can do alone."

  slide:
    nbText: "How does it work?"

    fragmentFadeIn:
      nbText: "Bali works like your typical JavaScript engine. It takes a JavaScript source file, tokenizes it and parses that into an abstract syntax tree of statements."

    fragmentFadeIn:
      nbText: "It then analyzes that abstract syntax tree to generate bytecode that targets the Mirage interpreter."

  slide:
    nbText: "Scary and ugly bytecode"

    column:
      nbImage("assets/bytecode-run.jpg")
      nbImage("assets/bytecode.jpg")

  slide:
    nbText: "What can Bali do right now?"
    fragmentFadeIn:
      nbText: "Bali currently supports the Web Console API, the Web Math API, constructors like the URL constructor and some builtins like parseInt."

    fragmentFadeIn:
      nbText: "The URL parsing API is based off of Sanchar, our HTTP client's URL parser. I'd like to thank Constantine Molchanov for working on making the parser more compliant by adding Punycode support."

    fragmentFadeIn:
      nbText: "I also ended up binding a good part of simdutf to Nim just to add SIMD accelerated base64 processing to Bali and the performance improvements are nice."

  slide:
    nbText: "Pushing graphics on the screen"
    fragmentFadeIn:
      nbText: "I'll now be talking about how Ferus' graphics stack works. At the heart of it all is a relatively simple (~800 LoC) library called ferusgfx."
  
  slide:
    nbText: "ferusgfx"
    fragmentFadeIn:
      nbText: "ferusgfx is a fairly simple library. It consists of a Scene object, a DisplayList object and all the different nodes deriving from Drawable."

    fragmentFadeIn:
      nbText: "This pipeline is mostly a transactional rendering system, which is perfect for us as we can predictably mutate the scene tree by sending serialized display lists over the IPC layer."

  slide:
    nbText: "Parsing CSS3"
    fragmentFadeIn:
      nbText: "Stylus is a CSS3 compliant parser written in Nim."

    fragmentFadeIn:
      nbText: "It's mostly based off of Servo's CSS parser."

    fragmentFadeIn:
      nbText: "It still has a lot of kinks and bumps to smooth out, which'll be done once it's fully integrated into the Ferus source tree."

  slide:
    nbText: "That's about it."
    fragmentFadeIn:
      nbText: "Thank you for listening to me ramble about something I'm genuinely passionate about!"

    fragmentFadeIn:
      nbText: "I hope Ferus can become a viable alternative to something like Chrome or Firefox one day."

    fragmentFadeIn:
      nbText: "I'm currently a student, so I cannot devote a lot of time to Ferus. However, I hope to be able to work as much as possible on Ferus once I'm done with that."

  slide:
    fragmentFadeIn:
      nbText: "As I just stated, I'm a student so I don't really need any monetary support, but what I'd appreciate it if you could try out Ferus for yourself on basic websites and check out whether they work or not, and file bug reports so that I have a tracker of everything I need to implement."

nbSave()
