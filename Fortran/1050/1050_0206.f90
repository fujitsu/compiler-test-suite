!
!
!

subroutine sub(b)
  real(16)::a,b
  if (b /= 10.0) then
     print *,"NG-0 b=",b
  end if
  a=b
!$omp task firstprivate(a,b)
  if (a /= 10.0 .or. b /= 10.0) then
     print *,"NG-1 a=",a," / b=",b
  end if
  a = 15.0
  b =5.0
!$omp end task
  if (a /= 10.0 .or. b /= 10.0) then
     print *,"NG-2 a=",a," / b=",b
  end if
end subroutine sub

real(16)::b
b=10.0
call sub(b)
print *,"pass"
end
