subroutine sub()
  call sub1()
end subroutine sub
subroutine sub1()
  integer i,arg1
  do i=1,10
     arg1 = arg1 + i
  end do
  print *, arg1
end subroutine sub1

program main
  print *,"OK"
end program main
