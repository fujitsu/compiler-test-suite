MODULE m1
integer,parameter :: n=6
CONTAINS
  SUBROUTINE calc_sub()
    REAL::dd(n)=1
  if (size(dd)/=6) print *,101
  if ( any(dd/=1)) print *,103
  END SUBROUTINE
END MODULE


  USE m1
call calc_sub
print *,'pass'
end
