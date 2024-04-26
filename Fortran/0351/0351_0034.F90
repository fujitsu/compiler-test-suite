program main
  integer(kind=8),dimension(64) :: src1,src2,res,dest
  call init(src1,src2,dest,res)
  do i=1,2
     call test(src1,src2,dest)
  enddo
  do i=1,64
     if(dest(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(src1,src2,dest,res)
  integer(kind=8),dimension(1:64) :: src1,src2,dest,res

  do i=1,64
     dest(i) = 0
     src1(i) = i
     src2(i) = i
     res(i) = ISHFT(i,8) + i 
  enddo
end subroutine init


subroutine test(src1,src2,dest)
  integer(kind=8), dimension(1:64) :: src1,src2,dest

  do i=1,64
     dest(i) = ISHFT(src1(i),8) + src2(i)
  enddo
end subroutine test
