
subroutine sub01(x,a,b,mask)
  integer(kind=4) i,idx,idx2,mask(77)
  integer(kind=4) a(77)
  real(kind=4) x(77), b(77)

  idx = 1
  idx2 = 1
  n = mask(77)
  do i=1,n
     
     if (x(i) .lt. b(i)) then
        x(i) = b(idx)
        idx = idx + 1
     end if
     
     if(mod(mask(i),2) .eq. 0) then
        a(idx2) = i
        idx2 = idx2 + 1
     endif
  end do
end subroutine sub01

subroutine sub02(x,a,b,mask)
  integer(kind=4) i,idx,idx2,mask(77)
  integer(kind=4) a(77)
  real(kind=4) x(77), b(77)

  idx = 1
  idx2 = 1
  n = mask(77)
  do i=1,n
     
     if (x(i) .lt. b(i)) then
        x(i) = b(idx)
        idx = idx + 1
     end if
     
     if(mod(mask(i),2) .eq. 0) then
        a(idx2) = i
        idx2 = idx2 + 1
     endif
  end do
end subroutine sub02

program main
  integer(kind=4) a(77)/77*0/, c(77)/77*0/
  real(kind=4) x(77)/77*0/,y(77)/77*0/,b(77)
  integer(kind=4) i,mask(77)
  do i=1,77
     mask(i) = i
     b(i) = i/2
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
