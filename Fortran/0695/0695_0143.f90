
subroutine sub01(x,a,b,d,mask)
  integer(kind=8) i,idx,mask(77)
  real(kind=8) a(77)
  real(kind=4) z, x(77), b(77), d(77)

  z = 0
  n = mask(77)
  do i=1,n
     
     if (z .lt. b(i)) then
        z = b(i)
        idx = i
     end if
     
     if(mod(mask(i),3) .eq. 0) then
        x(i) = a(i) * d(i)
     else
        x(i) = a(i) + d(i)
     end if
  end do
  a = z  + idx
end subroutine sub01

subroutine sub02(x,a,b,d,mask)
  integer(kind=8) i,idx,mask(77)
  real(kind=8) a(77)
  real(kind=4) z, x(77), b(77), d(77)

  z = 0
  n = mask(77)
  do i=1,n
     
     if (z .lt. b(i)) then
        z = b(i)
        idx = i
     end if
     
     if(mod(mask(i),3) .eq. 0) then
        x(i) = a(i) * d(i)
     else
        x(i) = a(i) + d(i)
     end if
  end do
  a =  z + idx
end subroutine sub02

program main
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  real(kind=4) x(77)/77*0/,y(77)/77*0/,b(77)/77*1/,d(77)/77*2/,e(77)/77*2/
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
