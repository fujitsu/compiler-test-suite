
subroutine sub01(x,a,b,mask)
  integer(kind=8) i,idx(77),mask(77)
  real(kind=8) z(77), a(77)
  real(kind=8) x, b(77)

  idx = 1
  z = 0
  n = mask(77)
  do i=1,n
     
     if(mod(mask(i),2) .eq. 0) then
        z(i) = i
        idx(i) = idx(i) + 1
     endif
     
     if (x .lt. b(i)) then
        x = b(i)
     end if
  end do
  a = z + idx
end subroutine sub01

subroutine sub02(x,a,b,mask)
  integer(kind=8) i,idx(77),mask(77)
  real(kind=8) z(77), a(77)
  real(kind=8) x, b(77)

  idx = 1
  z = 0
  n = mask(77)
  do i=1, n
     
     if(mod(mask(i),2) .eq. 0) then
        z(i) = i
        idx(i) = idx(i) + 1
     endif
     
     if (x .lt. b(i)) then
        x = b(i)
     end if
  end do
  a = z + idx
end subroutine sub02

program main
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  real(kind=8) x/0/,y/0/,b(77)/77*1/
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
     b(i) = i/2
  end do
  call sub01(x,a,b,mask)
  call sub02(y,c,b,mask)
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