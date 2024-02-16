MODULE m1
integer,parameter :: n=6
end


subroutine ss
  USE m1
INTERFACE
  SUBROUTINE calc_sub(dd)
    import n
    REAL::dd(n)
  END SUBROUTINE
END INTERFACE


INTERFACE
  SUBROUTINE write_sub(func)
    INTERFACE
     SUBROUTINE func(dd)
        REAL ::dd(6)
      END SUBROUTINE
    END INTERFACE
  END SUBROUTINE
END INTERFACE

    CALL write_sub(calc_sub)
end
call ss
print *,'pass'
END

  SUBROUTINE write_sub(func)
    INTERFACE
     SUBROUTINE func(dd)
        REAL ::dd(6)
      END SUBROUTINE
    END INTERFACE
        REAL ::dd(6)
   call func(dd)
   if (any(dd/=1) ) print *,801
  END SUBROUTINE

  SUBROUTINE calc_sub(dd)
    use m1 
    REAL::dd(n)
    dd=1
  END SUBROUTINE
