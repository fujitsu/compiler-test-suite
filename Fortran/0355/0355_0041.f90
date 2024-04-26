subroutine sub1(arg1)
  integer i
  integer,dimension(16,16)::arg1
  do j=1,16
     do i=1,16
        arg1(i,j) = arg1(i,j) + i
     end do
  end do
end subroutine sub1
subroutine sub2(arg2)
  integer i
  integer,dimension(16)::arg2
  do i=1,16
     arg2(i) = arg2(i) + i
  end do
end subroutine sub2
subroutine sub3(ret1, ret2)
  integer,dimension(16,16)::ret1
  integer,dimension(16)::ret2

  ret1 = 0
  ret2 = 0

  call sub1(ret1)
  call sub2(ret2)

  write(*,*) ret1,ret2
end subroutine sub3

program main
  print *,"OK"
end program main
