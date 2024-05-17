(define-module (chip packages zig)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy)
  #:use-module (guix licenses))

(define-public zig
  (package
   (name "zig")
   (version "0.13.0-dev.211+6a65561e3")
   (source (origin
            (method url-fetch)
            (uri (string-append "https://ziglang.org/builds/zig-linux-x86_64-" version ".tar.xz"))
            (sha256
             (base32 "05njpppvyx9pchx9hca1argph2n933cx0h1jn4mzd27pkynksswx"))))
   (build-system copy-build-system)
   (arguments
    `(#:install-plan '(("." "bin/"))))
   (synopsis "Zig compiler")
   (description "A general-purpose programming language and toolchain for maintaining robust, optimal, and reusable software.")
   (home-page "https://ziglang.org")
   (license expat)))
