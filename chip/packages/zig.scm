(define-module (chip packages zig)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy)
  #:use-module (guix licenses))

(define-public zig
  (package
   (name "zig")
   (version "0.14.0-dev.781+f03d54f06")
   (source (origin
            (method url-fetch)
            (uri (string-append "https://ziglang.org/builds/zig-linux-x86_64-" version ".tar.xz"))
            (sha256
             (base32 "1w3nl3364rncifhd1my2cvc00q3j7g5wyh09f1aw05g6fq9cpjcv"))))
   (build-system copy-build-system)
   (arguments
    `(#:install-plan '(("." "bin/"))))
   (synopsis "Zig compiler")
   (description "A general-purpose programming language and toolchain for maintaining robust, optimal, and reusable software.")
   (home-page "https://ziglang.org")
   (license expat)))
