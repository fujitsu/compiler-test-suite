program main
  integer(kind=8),dimension(64) :: dest,src,res
  call init(dest,src,res,64)
  do i=1,2
     call test(dest,src,i-1)
  enddo
  do i=1,64
     if(dest(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,src,res,n1)
  integer(kind=8),dimension(1:n1) :: dest,src,res

  do i=1,n1
     dest(i) = 0_8
     src(i) = i
     res(i) = i + i
  enddo
end subroutine init


subroutine test(dest, src, idx)
  integer(kind=8), dimension(64) :: dest,src

  do i=1,64
     dest(i) = src(i) + (i*idx)
  enddo
end subroutine test
