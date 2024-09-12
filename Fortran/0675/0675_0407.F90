
program main
  real(kind=8),dimension(1:64) :: a,b,res
  interface
     subroutine init(a,b,res)
       real(kind=8),dimension(1:64) :: a,b,res
     end subroutine init
  end interface
  call init(a,b,res)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if (.not.is_equal_r8(a(i), res(i))) then
        print *, "i=", i, "a(i)=", a(i), "master=", res(i)
        print *, "NG"
     endif

  enddo
  print *, "OK"
contains
  logical function is_equal_r4(a, b)
    real(kind=4)::a,b
    if ( a.eq.b ) then
       is_equal_r4 = .true.
    else if ( a.eq.0 ) then
       is_equal_r4 = ( b .lt. (1.0E-6)) 
    else 
       is_equal_r4 = ( abs(a-b)/abs(a) .lt. (1.0E-6) )
    end if
  end function is_equal_r4

  logical function is_equal_r8(a, b)
    real(kind=8)::a,b
    if ( a.eq.b ) then
       is_equal_r8 = .true.
    else if ( a.eq.0 ) then
       is_equal_r8 = ( b .lt. (1.0E-13)) 
    else 
       is_equal_r8 = ( abs(a-b)/abs(a) .lt. (1.0E-13) )
    end if
  end function is_equal_r8
end program main

subroutine set(a,x)
  real(kind=8) :: a,x

  if ((abs(x) .ge. 709.782D0)) then
     a = 709.782D0 - 10.
  else
     a = x
  endif
end subroutine set

subroutine init(a,b,res)
  real(kind=8),dimension(1:64) :: a,b,res

  do i=1,64
     a(i) = 0._8
     if (i .gt. 64/2) then
        call set(b(i),real(i,kind=8))
     else
        call set(b(i),real(-i,kind=8))
     endif
     res(i) = exp(b(i))
  enddo
end subroutine init

subroutine test(a,b)
  real(kind=8), dimension(1:64) :: a,b

  do i=1,64
     a(i) = exp(b(i))
  enddo
end subroutine test
