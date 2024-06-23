(define-module (chip packages zig)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy)
  #:use-module (guix licenses))

(define-public zig
  (package
   (name "zig")
   (version "0.14.0-dev.112+9be9b8ca9")
   (source (origin
            (method url-fetch)
            (uri (string-append "https://ziglang.org/builds/zig-linux-x86_64-" version ".tar.xz"))
            (sha256
             (base32 "0xn0d51k28l2lqdnl6rpzhplyfazzww9l5flf5ic7q14d66hqk6j"))))
   (build-system copy-build-system)
   (arguments
    `(#:install-plan '(("." "bin/"))))
   (synopsis "Zig compiler")
   (description "A general-purpose programming language and toolchain for maintaining robust, optimal, and reusable software.")
   (home-page "https://ziglang.org")
   (license expat)))
