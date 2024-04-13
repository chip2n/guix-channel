(define-module (chip packages st)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module ((gnu packages suckless) #:prefix suckless:))

(define-public st
  (package
   (inherit suckless:st)
   (source (origin
            (method git-fetch)
            (uri (git-reference
                  (url "https://github.com/chip2n/st")
                  (commit "af159459d8d7edf99bdc40ce15ba37867ea5dd06")))
            (sha256
             (base32 "053m8jxv3l3d8hzx7xc8yx5r25wv003qsiwyhhq9z2qqnl7gabf8"))))
   (home-page "https://github.com/chip2n/st")))
