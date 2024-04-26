  type st2
     complex*16 :: a(50)
  end type st2
  type st1
    type(st2) :: str2
  end type st1
  type(st1) :: str
  real*8 b(50)/50*1/
  b=1
  do i=1,50
     str%str2%a(i) = cmplx(-5, -8)
  enddo

  do i=1,50
     b(i) = conjg(str%str2%a(i))
  enddo
  do i=1,50
     if (b(i).ne. -5) then
        write(6,*) "ng"
        write(6,*) b
        stop
     endif
  enddo
  write(6,*) "ok"
end
