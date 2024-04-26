subroutine sub1(arg1)
  integer i,arg1

  do i=1,10
     arg1 = arg1 + i
  end do
end subroutine sub1
subroutine sub(ret)
integer ret

ret = 0
call sub1(ret)

write(*,*) ret

end subroutine sub
program main
  print *,"OK"
end program main
