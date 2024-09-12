MODULE m
  TYPE t
   CONTAINS
     FINAL :: finalize_t1s
  END TYPE t
  interface
     module SUBROUTINE finalize_t1s(x)
       TYPE(t) x
     END SUBROUTINE finalize_t1s
  end interface
CONTAINS
  module SUBROUTINE finalize_t1s(x)
    TYPE(t) x
  END SUBROUTINE finalize_t1s
END MODULE m

SUBROUTINE example
  USE m
    TYPE(t) a
END SUBROUTINE example

print *,'pass'
end
