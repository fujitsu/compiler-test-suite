MODULE m
  TYPE t(k)
     INTEGER, KIND :: k
   CONTAINS
     FINAL :: finalize_t1s
  END TYPE t
  interface
     module SUBROUTINE finalize_t1s(x)
       TYPE(t(KIND(0.0))) x
     END SUBROUTINE finalize_t1s
  end interface
CONTAINS
  module SUBROUTINE finalize_t1s(x)
    TYPE(t(KIND(0.0))) x
  END SUBROUTINE finalize_t1s
END MODULE m

SUBROUTINE example
  USE m
  TYPE(t(KIND(0.0))) a
END SUBROUTINE example

print *,'pass'
end
