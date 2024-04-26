  type st1
     complex*16 :: a(50)
  end type st1
  type(st1) :: str
  real*8 b(50)/50*1/
  b=1
  do i=1,50
     str%a(i) = cmplx(-5, 8)
  enddo

  do i=1,50
     b(i) = tan(str%a(i))
  enddo
  do i=1,50
     if (abs(b(i) - (1.29704773E-07)) .ge. 0.0000002) then
        write(6,*) "ng"
        write(6,*) b
        stop
     endif
  enddo
  write(6,*) "ok"
end
