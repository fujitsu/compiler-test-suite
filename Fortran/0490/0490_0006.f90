         subroutine FSUB() BIND(C, NAME="Cfun")
             common /FSUB/ xx
 xx=1
         END

interface
         subroutine FSUB() BIND(C, NAME="Cfun")
             common /FSUB/ xx
         END
end interface
             common /FSUB/ xx
call FSUB
if (xx/=1) print *,101
print *,'pass'
end
