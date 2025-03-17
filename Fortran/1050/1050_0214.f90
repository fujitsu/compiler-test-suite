!
!
!

subroutine sub(a)
  integer::a(10)
  a(10)=10
!$omp task firstprivate(a)
  if (a(10)/=10) then
     print *,"NG a(10)=",a(10)
     print *,"   a=",a
  endif
  a(1) = 10
!$omp end task
end subroutine sub

integer::a(10)

a=5
call sub(a)
print *,"pass"
end
