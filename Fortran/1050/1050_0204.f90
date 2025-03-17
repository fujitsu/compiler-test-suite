!
!
!

subroutine sub(b)
  integer(4)::a,b
  if (b /= 100) then
     print *,"NG-0 b=",b
  end if
  a=b
!$omp task firstprivate(a,b)
  if (a /= 100 .or. b /= 100) then
     print *,"NG-1 a=",a," / b=",b
  end if
  a = 150
  b =50
!$omp end task
  if (a /= 100 .or. b /= 100) then
     print *,"NG-2 a=",a," / b=",b
  end if
end subroutine sub

integer(4)::b
b=100
call sub(b)
print *,"pass"
end
