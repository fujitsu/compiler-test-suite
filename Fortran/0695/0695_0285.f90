
module mod_data
  real(kind=8) a(77), c(77)
end module mod_data

subroutine sub01(x,b,d,mask)
  use mod_data
  integer(kind=8) i,idx(77),mask(77)
  real(kind=8) x, b(77), d(77)

  idx = 1
  n = mask(77)
  do i=1,n
     
     if(mod(mask(i),2) .eq. 0) then
        a(i) = i
        idx(i) = idx(i) + 1
     endif
     
     if(mod(mask(i),3) .eq. 0) then
        x = x + b(i)
     else
        x = x + d(i)
     end if
  end do
  a = a + idx
end subroutine sub01

subroutine sub02(x,b,d,mask)
  use mod_data
  integer(kind=8) i,idx(77),mask(77)
  real(kind=8) x, b(77),d(77)

  idx = 1
  n = mask(77)
  do i=1, n
     
     if(mod(mask(i),2) .eq. 0) then
        c(i) = i
        idx(i) = idx(i) + 1
     endif
     
     if(mod(mask(i),3) .eq. 0) then
        x = x + b(i)
     else
        x = x + d(i)
     end if
  end do
  c = c + idx
end subroutine sub02

program main
  use mod_data
  real(kind=8) x/0/,y/0/,b(77)/77*1/,d(77)/77*2/
  integer(kind=8) i,mask(77)
  a = 0
  c = 0
  do i=1,77
     mask(i) = i
  end do
  call sub01(x,b,d,mask)
  call sub02(y,b,d,mask)
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
  enddo
  write(6,*) "ok"

end program main
