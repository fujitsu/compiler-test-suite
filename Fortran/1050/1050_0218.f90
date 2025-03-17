!
!
!

subroutine sub(a,n)
  integer::n
  integer::a(n)
  a=5
  a(10)=100
!$omp task firstprivate(a)
  if (a(10) /= 100) then
     print *,"NG a(10)=",a(10)
  end if
  a(5)=150
  a(10)=200
!$omp end task
  if (a(5) /= 5 .or. a(10) /= 100) then
     print *,"NG a(5)=",a(5)," / a(10)=",a(10)
  end if
end subroutine sub

integer::n,a(10)
n=10
call sub(a,n)
print *,"pass"
end
