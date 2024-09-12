
subroutine sub01(a,b,d,mask)
  integer(kind=4) i,mask(77)
  integer(kind=4) a(77)
  real(kind=4) x(77),y(77),b(77), d(77)
  common /com1/ x,y
  
  n = mask(77)
  do i=1,n
     
     if (x(i) .lt. b(i)) then
        x(i) = b(i)
     end if
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = x(i) + a(i)
     else
        d(i) = x(i) + d(i)
     end if
  end do

end subroutine sub01

subroutine sub02(a,b,d,mask)
  integer(kind=4) i,mask(77)
  integer(kind=4) a(77)
  real(kind=4) x(77),y(77), b(77), d(77)
  common /com1/ x,y

  n = mask(77)
  do i=1,n
     
     if (y(i) .lt. b(i)) then
        y(i) = b(i)
     end if
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = y(i) + a(i)
     else
        d(i) = y(i) + d(i)
     end if
  end do

end subroutine sub02

program main
  integer(kind=4) a(77)/77*0/, c(77)/77*0/
  real(kind=4) x(77),y(77),b(77)/77*1/,d(77)/77*2/,e(77)/77*2/
  integer(kind=4) i,mask(77)
  common /com1/ x, y
  x = 0
  y = 0
  do i=1,77
     mask(i) = i
     a(i) = i
     c(i) = i
     b(i) = i/2
     d(i) = i*2
     e(i) = i*2
  end do
  call sub01(a,b,d,mask)
  call sub02(c,b,e,mask)
  do i=1,77
     if (x(i) .ne. y(i)) then
        write(6,*) x(i)
        write(6,*) y(i)
     endif
     if (a(i) .ne. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
     if (d(i) .ne. e(i)) then
        write(6,*) d(i)
        write(6,*) e(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
