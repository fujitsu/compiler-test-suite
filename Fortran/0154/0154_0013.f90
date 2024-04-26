MODULE mod
  INTERFACE
    SUBROUTINE sub()
    END SUBROUTINE 
  END INTERFACE

  PROCEDURE(sub), POINTER :: pa
END MODULE

MODULE mod1
 USE mod
 real:: a=1
contains
subroutine s
pa=> sub
call pa
end subroutine
END MODULE 

USE mod1,ONLY: a,s
if (a/=1) print *,101
call s
rewind 1
read(1,*) k
if (k/=2) print *,201
print *,'pass'
END 

    SUBROUTINE sub()
write(1,*) 2
    END SUBROUTINE 
