program main
  real(kind=4),dimension(1:64) :: a,b,res
  interface
    subroutine init(a,b,res,f)
      real(kind=4),dimension(1:64) :: a,b,res
      external f
      real(kind=4) :: f
    end subroutine init
  end interface
  intrinsic cos
  call init(a,b,res,cos)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if(((abs(a(i) -  res(i))/abs(a(i))) .gt. 1.0E-6)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,f)
  real(kind=4),dimension(1:64) :: a,b,res
  external f
  real(kind=4) :: f

  do i=1,64
     a(i) = 0._4
     b(i) = real(i,kind=4)
     res(i) = f(real(i,kind=4))
  enddo
end subroutine init


subroutine test(a,b)
  real(kind=4), dimension(1:64) :: a,b

  do i=1,64
     a(i) = cos(b(i))
  enddo
end subroutine test
