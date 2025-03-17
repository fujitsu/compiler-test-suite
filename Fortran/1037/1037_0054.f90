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
!$omp atomic
  i=k+i
end
subroutine t04(i,a)
integer a
!$omp atomic
  i=i+a
end
subroutine t03(i,a)
integer a
!$omp atomic
  i=i+(a+a)
end
subroutine t01(i)
k=1
!$omp atomic
  i=k+i
end
subroutine t02(i)
k=1
!$omp atomic
  i=i+k
end
subroutine t06(i)
!$omp atomic
  i=1+i
end
subroutine t07(i)
!$omp atomic
  i=i+1
end
subroutine t15(i,a)
!$omp atomic
  i=a+i
end
subroutine t14(i,a)
!$omp atomic
  i=i+a
end
subroutine t11(i)
k=1
!$omp atomic
  i=k+i
end
subroutine t12(i)
k=1
!$omp atomic
  i=i+k
end
subroutine t16(i)
!$omp atomic
  i=1+i
end
subroutine t17(i)
!$omp atomic
  i=i+1
end
subroutine y05(i,k)
integer k(2)
!$omp atomic
  i=k(2)+i
end
subroutine y04(i,a)
integer a(2)
!$omp atomic
  i=i+a(2)
end
subroutine y03(i,a)
integer a(2)
!$omp atomic
  i=i+(a(2)+a(2))
end
subroutine y01(i)
integer k(2)
k(2)=1
j=1
!$omp atomic
  i=k(j+j)+i
end
subroutine y02(i)
integer k(2)
k(2)=1
!$omp atomic
  i=i+k(2)
end
subroutine y06(i)
type nn
 integer n
end type
type(nn) n
n%n=1
!$omp atomic
  i=n%n+i
end
subroutine y07(i)
type nn
 integer n
end type
type(nn) n
n%n=1
!$omp atomic
  i=i+n%n
end
subroutine y15(i,a)
dimension a(2)
!$omp atomic
  i=a(2)+i
end
subroutine y14(i,a)
dimension a(2)
!$omp atomic
  i=i+a(2)
end
subroutine y11(i)
integer k(2)
k(2)=1
!$omp atomic
  i=k(2)+i
end
subroutine y12(i)
integer k(2)
k(2)=1
!$omp atomic
  i=i+k(2)
end
subroutine y16(i)
type nn
 integer a
end type
type(nn) n
n%a=1
!$omp atomic
  i=n%a+i
end
subroutine y17(i)
!$omp atomic
  i=i+1.0
end
