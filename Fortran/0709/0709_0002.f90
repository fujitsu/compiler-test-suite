 call s1
 print *,'pass'
 end
module m1
  INTERFACE
     FUNCTION func(dummy)
       REAL(4) :: func
         INTERFACE
           SUBROUTINE dummy()
           END SUBROUTINE dummy
         END INTERFACE
     END FUNCTION func
  END INTERFACE
end
module m2
 INTERFACE
    SUBROUTINE arg()
    END SUBROUTINE arg
 END INTERFACE
end
subroutine s2
use m1
use m2
  print *, func(arg)
end
 FUNCTION func(dummy)
       REAL(4) :: func
         INTERFACE
           SUBROUTINE dummy()
           END SUBROUTINE dummy
         END INTERFACE
     func=1.
     END FUNCTION func
SUBROUTINE arg()
    END SUBROUTINE arg
subroutine s1
end
