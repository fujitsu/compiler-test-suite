program main
  integer(kind=4),dimension(64) :: src1,src2,dest
  call init(src1,src2,dest)
  do i=1,2
     call test(src1,src2,dest)
  enddo
  do i=1,64
     if(dest(i) .ne. (i*4)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(src1,src2,dest)
  integer(kind=4),dimension(1:64) :: src1,src2,dest

  do i=1,64
     dest(i) = 0
     src1(i) = i
     src2(i) = 2
  enddo
end subroutine init


subroutine test(src1,src2,dest)
  integer(kind=4), dimension(1:64) :: src1,src2,dest

  do i=1,64
     dest(i) = LSHIFT(src1(i),src2(i))
  enddo
end subroutine test
