  type st1
     complex*8 :: a(50)
  end type st1
  type(st1) :: str
  real b(50)/50*1/,r
  b=1
  do i=1,50
     str%a(i) = cmplx(-5, 8)
     n = i
  enddo

  do i=1,n,2
     b(i) = exp(str%a(i))
  enddo
  do i=1,n,2
     if (mod(i,2) == 1) then
        r = -9.80371493E-04
     else
        r = 1
     endif
     if (abs(b(i) - r) .ge. 0.0000002) then
        write(6,*) "ng"
        write(6,*) b
        stop
     endif
  enddo
  write(6,*) "ok"
end
