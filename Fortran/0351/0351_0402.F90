program main
  real(kind=4),dimension(64) :: dest,src,res
  call init(dest,src,res,64)
  do i=1,2
     call test(dest,src)
  enddo
  do i=1,64
     if(dest(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,src,res,n1)
  real(kind=4),dimension(1:n1) :: dest,src,res

  do i=1,n1
     dest(i) = 0._4
     src(i) = real(i,kind=4)
     res(i) = real(i+i,kind=4)
  enddo
end subroutine init


subroutine test(dest, src)
  real(kind=4), dimension(64) :: dest,src

  do i=1,64
     dest(i) = src(i) + real(i,kind=4)
  enddo
end subroutine test
