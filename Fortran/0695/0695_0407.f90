
subroutine sub01(a,b,mask)
  common /com1/ x,y
  integer(kind=4) i,mask(77)
  real(kind=4) a(77)
  integer(kind=4) x,y,b(77)

  n = mask(77)
  do i=1,n
     
     x = x + 1
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = a(i) + x
     else
        b(i) = b(i) + x
     end if
  end do
end subroutine sub01

subroutine sub02(a,b,mask)
  common /com1/ x,y
  integer(kind=4) i,mask(77)
  real(kind=4) a(77)
  integer(kind=4) x,y,b(77)

  n = mask(77)
  do i=1, n
     
     y = y + 1
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = a(i) + y
     else
        b(i) = b(i) + y
     end if
  end do
end subroutine sub02

program main
  common /com1/ x,y
  real(kind=4) a(77)/77*0/, c(77)/77*0/
  integer(kind=4) x,y,b(77)/77*1/,d(77)/77*1/
  integer(kind=4) i,mask(77)
  x = 0
  y = 0
  do i=1,77
     mask(i) = i
     a(i) = i/2
     c(i) = i/2
     b(i) = i*2
     d(i) = i*2
  end do
  call sub01(a,b,mask)
  call sub02(c,d,mask)
  if (x .ne. y) then
     write(6,*) x
     write(6,*) y
  endif
  do i=1,77
     if (a(i) .ne. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
     if (b(i) .ne. d(i)) then
        write(6,*) b(i)
        write(6,*) d(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
