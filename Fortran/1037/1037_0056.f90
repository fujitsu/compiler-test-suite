real bb(2)
integer kk(2)
i=1
k=1
call t03(i,k)
if (i/=3)print *,'error-03'
i=1
call t04(i,k)
if (i/=2)print *,'error-04'
i=1
call t05(i,k)
if (i/=2)print *,'error-05'

i=1
call t01(i)
if (i/=2)print *,'error-01'
i=1
call t02(i)
if (i/=2)print *,'error-02'
i=1
call t06(i)
if (i/=2)print *,'error-06'
i=1
call t07(i)
if (i/=2)print *,'error-07'
i=1
a=1
call t14(i,a)
if (i/=2)print *,'error-14'
i=1
call t15(i,a)
if (i/=2)print *,'error-15'
i=1
call t11(i)
if (i/=2)print *,'error-11'
i=1
call t12(i)
if (i/=2)print *,'error-12'
i=1
call t16(i)
if (i/=2)print *,'error-16'
i=1
call t17(i)
if (i/=2)print *,'error-17'
i=1
kk(2)=1
call y03(i,kk)
if (i/=3)print *,'error-y03'
i=1
call y04(i,kk)
if (i/=2)print *,'error-y04'
i=1
call y05(i,kk)
if (i/=2)print *,'error-y05'

i=1
call y01(i)
if (i/=2)print *,'error-y01'
i=1
call y02(i)
if (i/=2)print *,'error-y02'
i=1
call y06(i)
if (i/=2)print *,'error-y06'
i=1
call y07(i)
if (i/=2)print *,'error-y07'
i=1
bb(2)=1
call y14(i,bb)
if (i/=2)print *,'error-y14'
i=1
bb(2)=1
call y15(i,bb)
if (i/=2)print *,'error-y15'
i=1
call y11(i)
if (i/=2)print *,'error-y11'
i=1
call y12(i)
if (i/=2)print *,'error-y12'
i=1
call y16(i)
if (i/=2)print *,'error-y16'
i=1
call y17(i)
if (i/=2)print *,'error-y17'
print *,'pass'
end
subroutine t05(i,k)
ii=i
!$omp atomic
  ii=k+ii
i=ii
end
subroutine t04(i,a)
integer a
ii=i
!$omp atomic
  ii=ii+a
i=ii
end
subroutine t03(i,a)
integer a
ii=i
!$omp atomic
  ii=ii+(a+a)
i=ii
end
subroutine t01(i)
k=1
ii=i
!$omp atomic
  ii=k+ii
i=ii
end
subroutine t02(i)
k=1
ii=i
!$omp atomic
  ii=ii+k
i=ii
end
subroutine t06(i)
ii=i
!$omp atomic
  ii=1+ii
i=ii
end
subroutine t07(i)
ii=i
!$omp atomic
  ii=ii+1
i=ii
end
subroutine t15(i,a)
ii=i
!$omp atomic
  ii=a+ii
i=ii
end
subroutine t14(i,a)
ii=i
!$omp atomic
  ii=ii+a
i=ii
end
subroutine t11(i)
ii=i
k=1
!$omp atomic
  ii=k+ii
i=ii
end
subroutine t12(i)
ii=i
k=1
!$omp atomic
  ii=ii+k
i=ii
end
subroutine t16(i)
ii=i
!$omp atomic
  ii=1+ii
i=ii
end
subroutine t17(i)
ii=i
!$omp atomic
  ii=ii+1
i=ii
end
subroutine y05(i,k)
integer k(2)
ii=i
!$omp atomic
  ii=k(2)+ii
i=ii
end
subroutine y04(i,a)
integer a(2)
ii=i
!$omp atomic
  ii=ii+a(2)
i=ii
end
subroutine y03(i,a)
integer a(2)
ii=i
!$omp atomic
  ii=ii+(a(2)+a(2))
i=ii
end
subroutine y01(i)
integer k(2)
ii=i
k(2)=1
j=1
!$omp atomic
  ii=k(j+j)+ii
i=ii
end
subroutine y02(i)
integer k(2)
ii=i
k(2)=1
!$omp atomic
  ii=ii+k(2)
i=ii
end
subroutine y06(i)
type nn
 integer n
end type
type(nn) n
ii=i
n%n=1
!$omp atomic
  ii=n%n+ii
i=ii
end
subroutine y07(i)
type nn
 integer n
end type
type(nn) n
n%n=1
ii=i
!$omp atomic
  ii=ii+n%n
i=ii
end
subroutine y15(i,a)
dimension a(2)
ii=i
!$omp atomic
  ii=a(2)+ii
i=ii
end
subroutine y14(i,a)
dimension a(2)
ii=i
!$omp atomic
  ii=ii+a(2)
i=ii
end
subroutine y11(i)
integer k(2)
ii=i
k(2)=1
!$omp atomic
  ii=k(2)+ii
i=ii
end
subroutine y12(i)
integer k(2)
ii=i
k(2)=1
!$omp atomic
  ii=ii+k(2)
i=ii
end
subroutine y16(i)
type nn
 integer a
end type
type(nn) n
n%a=1
ii=i
!$omp atomic
  ii=n%a+ii
i=ii
end
subroutine y17(i)
ii=i
!$omp atomic
  ii=ii+1.0
i=ii
end
