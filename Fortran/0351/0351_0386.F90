program main
  complex(kind=8),dimension(1:64) :: b
  complex(kind=8) :: a,res
  integer,dimension(1:64) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(a,b,mask)
  enddo
  if(res .eq. cmplx(0._8, 0._8, kind=8)) then 
    if (a .ne. res) then
      print *, "NG"
    endif
  else 
    if(((abs(real(a) - real( res))/abs(real(a))) .gt. 1.0D-13 .or. (abs(imag(a) - imag( res))/abs(imag(a))) .gt. 1.0D-13)) then
      print *, "NG"
    endif
  endif
  print *, "OK"
end program main

subroutine init(a,b,res,mask)
  complex(kind=8),dimension(1:64) :: b
  complex(kind=8) :: a,res
  integer,dimension(1:64) :: mask

  a = cmplx(0._8, 0._8, kind=8)
  if ( mod(64,2_4) == 0) then
    res = cmplx(0._8, 0._8, kind=8)
  else
    res = cmplx(2._8, 2._8, kind=8)
  endif

  do i=1,64
     if (i .gt. 64/2) then
        b(i) = cmplx(1._8,1._8,kind=8)
     else
        b(i) = cmplx(-1._8,-1._8,kind=8)
     endif
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(a,b,mask)
  complex(kind=8), dimension(1:64) :: b
  complex(kind=8) :: a
  integer,dimension(1:64) :: mask








  do i=1,64
     a = a + b(i)
  enddo

end subroutine test
