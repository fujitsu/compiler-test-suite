
subroutine sub01(x,a,b,d,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)
  real(kind=8) x, b(77), d(77)

  n = mask(77)
  do i=1,n
     
     if (x .gt. b(i)) then
        x = b(i)
     end if
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = x + a(i)
     else
        d(i) = x + d(i)
     end if
  end do

end subroutine sub01

subroutine sub02(x,a,b,d,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)
  real(kind=8) x, b(77), d(77)

  n = mask(77)
  do i=1,n
     
     if (x .gt. b(i)) then
        x = b(i)
     end if
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = x + a(i)
     else
        d(i) = x + d(i)
     end if
  end do

end subroutine sub02

program main
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  real(kind=8) x/0/,y/0/,b(77)/77*1/,d(77)/77*2/,e(77)/77*2/
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
     a(i) = i
     c(i) = i
     b(i) = i/2
     d(i) = i*2
     e(i) = i*2
  end do
  call sub01(x,a,b,d,mask)
  call sub02(y,c,b,e,mask)
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
     if (d(i) .ne. e(i)) then
        write(6,*) d(i)
        write(6,*) e(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
