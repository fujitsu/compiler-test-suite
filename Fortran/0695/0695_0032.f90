
subroutine sub01(x,a,b,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) z, a(77)
  real(kind=8) x(77), b(77)

  z = 1
  n = mask(77)
  do i=1,n
     
     if (x(i) .gt. b(i)) then
        x(i) = b(i)
     end if
     
     a(i) = a(i) + z
  end do

end subroutine sub01

subroutine sub02(x,a,b,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) z, a(77)
  real(kind=8) x(77), b(77)

  z = 1
  n = mask(77)
  do i=1,n
     
     if (x(i) .gt. b(i)) then
        x(i) = b(i)
     end if
     
     a(i) = a(i) + z
  end do

end subroutine sub02

program main
  real(kind=8) a(77), c(77)/77*0/
  real(kind=8) x(77)/77*0/,y(77)/77*0/,b(77)/77*1/
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
     a(i) = i*2
     b(i) = i/2
     c(i) = i*2     
  end do
  call sub01(x,a,b,mask)
  call sub02(y,c,b,mask)
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
  enddo
  write(6,*) "ok"

end program main
