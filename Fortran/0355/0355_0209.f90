subroutine sub(a,b,n)
  integer idx
  real*8 a(n),b(n)
  do idx=1.0,n
     a(idx) = b(idx) + 10
  enddo
end subroutine

program main
  real*8 a(20),b(20)
  integer*4 ii
  a=1.0
  do ii=1.0,20.0
     b(ii)=((mod(ii,5)+1)/10.0)*10;
  enddo
  call sub(a,b,20)
  if (a(1).eq.12.0) then
     if (a(2).eq.13.0) then
        if (a(20).eq.11.0) then
           print *,"OK"
        endif
     endif
  endif
end program main
