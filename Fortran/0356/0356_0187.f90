program main
  integer(4) :: i, start, start2, end
  complex(4),dimension(1:100) :: a,b
  start=1
  start2=1
  end=100-1
  do i=1,100
     a(i) = conjg(cmplx(i,-i,kind=4))
     b(i) = conjg(cmplx(i,-i,kind=4))
  enddo

  call init(a,b,start,start2, end)
  call check(a,b)
end program main

subroutine init(a,b,start,start2,end)
  integer(4) :: i,j,start,start2,end
  complex(4),dimension(1:100) :: a,b
  j=start2
  do i=start,end
     a(i) = b(j)
     j=j+1
  enddo
end subroutine init


subroutine check(x,y)
  integer(4) :: i
  complex(4),dimension(1:100) :: x, y

  do i = 1,100-1
     if (.not.is_equal_r(x(i),y(i))) then
        print *, "NG", i, x(i),y(i)
        exit
     endif
  enddo
  print *, "OK"

contains
  logical function is_equal_r(a,b)
    complex(4) :: a, b
    if (a .eq. b) then
       is_equal_r = .true.
    else
       is_equal_r = ( abs(a-b)/abs(a) .lt. (1.0E-13))
    end if
  end function is_equal_r

end subroutine check
