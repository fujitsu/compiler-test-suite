program main
  integer(kind=4),dimension(64) :: src1,dest
  call init(src1,dest)
  do i=1,2
     call test(src1,dest)
  enddo
  do i=1,64
      if(dest(i) .ne. i) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(src1,dest)
  integer(kind=4),dimension(1:64) :: src1,dest

  do i=1,64
     dest(i) = 0
     src1(i) = i*4
  enddo
end subroutine init


subroutine test(src1,dest)
  integer(kind=4), dimension(1:64) :: src1,dest

  do i=1,64
     dest(i) = ISHFT(src1(i), -2)
  enddo
end subroutine test
