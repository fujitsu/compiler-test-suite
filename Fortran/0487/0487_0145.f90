subroutine s
call FSUB
contains
 subroutine FSUB() 
          common /FSUB/ xx
xx=1
      END
      END
          common /FSUB/ xx
call s
if (xx/=1) print *,101
print *,'pass'
end
