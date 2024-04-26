program main
  real(kind=8),dimension(64) :: a,b,res
  call init(a,b,res,64)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  real(kind=8),dimension(1:n1) :: a,b,res

  do i=1,n1
     a(i) = 0._8
     b(i) = real(i,kind=8) * 1.11_8
     res(i) = real(int(b(i) + 0.5_8, kind=8), kind=8)
  enddo
end subroutine init


subroutine test(a,b)
  real(kind=8), dimension(64) :: a,b

  do i=1,64
     a(i) = dnint(b(i))
  enddo
end subroutine test
