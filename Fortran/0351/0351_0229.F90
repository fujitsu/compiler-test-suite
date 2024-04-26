program main
  real(kind=8),dimension(512) :: a,b,res
  call init(a,b,res,512)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,512
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  real(kind=8),dimension(1:n1) :: a,b,res

  do i=1,n1
     a(i) = 0
     b(i) = 0
     res(i) = 0
  enddo

  do i=1,n1-2,33
     b(i) = i
     b(i+1) = i
     b(i+2) = i
     res(i) = i
     res(i+1) = i
     res(i+2) = i
  enddo
end subroutine init


subroutine test(a,b)
  real(kind=8), dimension(512) :: a,b

  do i=1,512-2,33
     a(i) = b(i)
     a(i+1) = b(i+1)
     a(i+2) = b(i+2)
  enddo
end subroutine
