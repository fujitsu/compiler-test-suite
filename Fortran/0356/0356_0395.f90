  type st1
     complex*16 :: a(50)
  end type st1
  type(st1) :: str
  real*8 b(50)/50*1/
  b=1
  do i=1,50
     str%a(i) = cmplx(-5, -8)
     n = i
  enddo

  do i=1,n,2
     b(i) = conjg(str%a(i))
  enddo
  do i=1,n,2
     if (mod(i,2) == 1) then
        m = -5
     else
        m = 1
     endif
     if (b(i) .ne. m) then
        write(6,*) "ng"
        write(6,*) b
        stop
     endif
  enddo
  write(6,*) "ok"
end
