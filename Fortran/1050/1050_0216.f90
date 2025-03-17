!
!
!

subroutine sub(n)
  integer::n
  integer(8)::a(n)
  a=2
  a(10) = 100
!$omp task firstprivate(a)
  if (a(10) /= 100) then
     print *,"NG a(10)=",a(10)
  end if
  a(5)=10
!$omp end task
  if (a(5) == 10 .or. a(10) /= 100) then
     print *,"NG a(5)=",a(5)," / a(10)=",a(10)
  end if
end subroutine sub

integer::n
n=10
call sub(n)
print *,"pass"
end
