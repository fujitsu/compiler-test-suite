
module mod_data
  real(kind=8) x(77), y(77)
end module mod_data

subroutine sub01(a,b,mask)
  use mod_data
  integer(kind=8) i,idx,mask(77)
  real(kind=8) z, a(77)
  real(kind=8) b(77)

  idx = 1
  z = 0
  n = mask(77)
  do i=1,n
     
     if (x(i) .gt. b(i)) then
        x(i) = b(i)
     end if
     
     if(mod(mask(i),2) .eq. 0) then
        z = i
        idx = idx + 1
     endif
  end do
  a = z + idx
end subroutine sub01

subroutine sub02(a,b,mask)
  use mod_data
  integer(kind=8) i,idx,mask(77)
  real(kind=8) z, a(77)
  real(kind=8) b(77)

  idx = 1
  z = 0
  n = mask(77)
  do i=1,n
     
     if (y(i) .gt. b(i)) then
        y(i) = b(i)
     end if
     
     if(mod(mask(i),2) .eq. 0) then
        z = i
        idx = idx + 1
     endif
  end do
  a = z + idx
end subroutine sub02

program main
  use mod_data
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  real(kind=8) b(77)
  integer(kind=8) i,mask(77)
  x = 0
  y = 0
  do i=1,77
     mask(i) = i
     b(i) = i/2
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
