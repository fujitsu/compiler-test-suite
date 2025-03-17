module m1
contains
subroutine s00(a,i,j,k)
integer a(5)
call       s000(a,i,j,k)
contains
subroutine s000(a,i,j,k)
integer a(5)
!$omp atomic  
a(i)=a(j)+a(k)
end subroutine
end subroutine
subroutine s01
i=1
!$omp atomic  
i=i+1
if (i/=2)print *,'error-001'
end subroutine
end
use m1
integer a(5)
a(2)=2
a(3)=3
i=2;j=2;k=3
call s00(a,i,j,k)
if (a(2)/=5)print *,'error-01'
i=3;j=2;k=3
call s00(a,i,j,k)
if (a(3)/=8)print *,'error-02'
call s01
print *,'pass'
end
