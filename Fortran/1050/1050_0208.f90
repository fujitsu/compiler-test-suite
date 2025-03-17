!
!
!

subroutine sub(b)
  character(16)::a,b
  a=b
!$omp task firstprivate(a,b)
  if ( a .ne. "123" .or. b .ne. "123" ) then
     print *,"NG-1 a=",a," / b=",b
  end if
  a ='456'
  b ='789'
!$omp end task
  if ( a .ne. "123" .or. b .ne. "123" ) then
     print *,"NG-2 a=",a," / b=",b
  end if
end subroutine sub

character(16)::b
b='123'
call sub(b)
print *,"pass"
end
