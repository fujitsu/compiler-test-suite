
program main
  complex(kind=4),dimension(1:64) :: a,b,res
  interface
     subroutine init(a,b,res)
       complex(kind=4),dimension(1:64) :: a,b,res
     end subroutine init
  end interface
  call init(a,b,res)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if ((.not.is_equal_r4(real(a(i)), real(res(i)))).or. &
          (.not.is_equal_r4(imag(a(i)), imag(res(i))))) then
        print *, "i=", i, "a(i)=", real(a(i)), ",", imag(a(i)), "master=", real(res(i)), ",", imag(res(i))
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

subroutine set(x,y,z)
  complex(kind=4) :: x
  real(kind=4) :: y,z,ty,tz
  real(kind=4) :: a,b

  ty = y / 100.
  tz = z / 99.
  
  if ((abs(y) .ge. 1.0)) then
     a = 0.35
  else
     a = ty
  endif
  if ((abs(z) .ge. 1.0)) then
     b = 0.99
  else
     b = tz
  endif
  x = cmplx(a,b)
end subroutine set
subroutine init(a,b,res)
  complex(kind=4),dimension(1:64) :: a,b,res

  do i=1,64
     a(i) = 0._4
     if (i .gt. 64/2) then
        call set(b(i) ,real(i,kind=4), real(i+1,kind=4))
        res(i) = atanh(b(i))
     else
        call set(b(i) ,real(i+1,kind=4), real(i+2,kind=4))
        res(i) = atanh(b(i))
     endif
  enddo
end subroutine init

subroutine test(a,b)
  complex(kind=4), dimension(1:64) :: a,b

  do i=1,64
     a(i) = atanh(b(i))
  enddo
end subroutine test
