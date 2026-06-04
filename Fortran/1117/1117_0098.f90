call test01()
print *,'pass'
end
module mod
contains
function imfun()
imfun=1
end function
end
subroutine test01()
use mod
ifun(i)=i
i=1
!$omp atomic
i=i+1
if (i.ne.2) print *,"fail"
j=2
!$omp atomic
i=i+j
if (i.ne.4) print *,"fail"
!$omp atomic
i=i+int(1)
if (i.ne.5) print *,"fail"
!$omp atomic
i=i+(-1)
if (i.ne.4) print *,"fail"
!$omp atomic
i=i+(1+j)
if (i.ne.7) print *,"fail"
!$omp atomic
i=i+ifun(1)
if (i.ne.8) print *,"fail"
!$omp atomic
i=i+iifun(1)
!$omp atomic
i=i+ijfun(j)
!$omp atomic
i=i+imfun()
!$omp atomic
i=i+1
!$omp atomic
i=i+1
!$omp atomic
i=i+1
!$omp atomic
i=i+1
!$omp atomic
i=i+1
contains
function iifun(k)
iifun=k
end function

end
function ijfun(i)
ijfun=i
end function
