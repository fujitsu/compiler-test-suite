subroutine sub(a,b,c)
integer*4::i
real*8,dimension(1:1024)::a,b,c

do i=1,1024
   a(i) = 1/b(i);
end do

end subroutine sub

program main
  print *, "OK"
end program main
