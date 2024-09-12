
subroutine sub01(mask)
  integer(kind=8) i,idx(77),mask(77)
  real(kind=8) a(77), c(77)
  common /com1/ a,c

  idx = 1
  n = mask(77)
  do i=1,n
     
     if(mod(mask(i),2) .eq. 0) then
        a(i) = i
        idx(i) = idx(i) + 1
     endif
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = i * 2
        idx(i) = idx(i) * 2
     endif
  end do
  a = a + idx
end subroutine sub01

subroutine sub02(mask)
  integer(kind=8) i,idx(77),mask(77)
  real(kind=8) a(77), c(77)
  common /com1/ a,c

  idx = 1
  n = mask(77)
  do i=1,n
     
     if(mod(mask(i),2) .eq. 0) then
        c(i) = i
        idx(i) = idx(i) + 1
     endif
     
     if(mod(mask(i),3) .eq. 0) then
        c(i) = i * 2
        idx(i) = idx(i) * 2
     endif
  end do
  c = c + idx
end subroutine sub02

program main
  integer(kind=8) i,mask(77)
  real(kind=8) a(77), c(77)
  common /com1/ a,c

  a = 0
  c = 0
  do i=1,77
     mask(i) = i
  end do
  call sub01(mask)
  call sub02(mask)
  do i=1,77
     if (a(i) .ne. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
