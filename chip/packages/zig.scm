(define-module (chip packages zig)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy)
  #:use-module (guix licenses))

(define-public zig
  (package
   (name "zig")
   (version "0.12.0-dev.3644+05d975576")
   (source (origin
            (method url-fetch)
            (uri (string-append "https://ziglang.org/builds/zig-linux-x86_64-" version ".tar.xz"))
            (sha256
             (base32 "15ymq89gfcmg0apywx8xs4vjf2cvjnppv5a904zagha4yw7dkr4r"))))
   (build-system copy-build-system)
   (arguments
    `(#:install-plan '(("." "bin/"))))
   (synopsis "Zig compiler")
   (description "A general-purpose programming language and toolchain for maintaining robust, optimal, and reusable software.")
   (home-page "https://ziglang.org")
   (license expat)))
