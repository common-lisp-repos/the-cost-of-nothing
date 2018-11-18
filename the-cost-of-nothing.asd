(defsystem "the-cost-of-nothing"
  :description "Determine the cost of things in Common Lisp."
  :long-description
  "This library provides portable and sophisticated benchmark functions. It
comes bundled with an extensive test suite that describes the performance
of the currently used Lisp implementation, e.g. with respect to garbage
collection, sequence traversal, CLOS and floating-point performance."
  :author "Marco Heisig <marco.heisig@fau.de>"
  :license "MIT"

  :depends-on
  ("alexandria"
   "closer-mop"
   "fare-memoization"
   "local-time"
   "trivial-garbage")

  :perform
  (test-op (o c) (symbol-call '#:the-cost-of-nothing '#:report))
  :components

  ((:module "core"
    :serial t
    :components
    ((:file "packages")
     (:file "utilities")
     (:file "time")
     (:file "monitoring")
     (:file "benchmarking")
     (:file "time-series")))

   (:module "benchmarks"
    :serial t
    :components
    ((:file "memory-management")
     (:file "function-calls")
     (:file "numerics")
     (:file "report")))))
