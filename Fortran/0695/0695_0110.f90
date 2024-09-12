
module mod_data
  real(kind=8) x(77), y(77)
end module mod_data

subroutine sub01(a,b,mask)
  use mod_data
  integer(kind=8) i,mask(77)
  real(kind=8) z, a(77)
  real(kind=8) b(77)

  z = 1
  n = mask(77)
  do i=1,n
     
     if (x(i) .lt. b(i)) then
        x(i) = b(i)
        z = i
     end if
     
     if (z .gt. a(i)) then
        a(i) = z
     end if
  end do
  
end subroutine sub01

subroutine sub02(a,b,mask)
  use mod_data
  integer(kind=8) i,mask(77)
  real(kind=8) z, a(77)
  real(kind=8) b(77)

  z = 1
  n = mask(77)
  do i=1,n
     
     if (y(i) .lt. b(i)) then
        y(i) = b(i)
        z = i
     end if
     
     if (z .gt. a(i)) then
        a(i) = z
     end if
  end do
  
end subroutine sub02

program main
  use mod_data
  real(kind=8) a(77), c(77)/77*0/
  real(kind=8) b(77)/77*1/
  integer(kind=8) i,mask(77)
  x = 0
  y = 0
  do i=1,77
     mask(i) = i
     a(i) = -(i/2)
     b(i) = i*2
     c(i) = -(i/2)
  end do
  call sub01(a,b,mask)
  call sub02(c,b,mask)
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
