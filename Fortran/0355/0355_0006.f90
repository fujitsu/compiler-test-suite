subroutine sub(a,b,n)
  real*8 a(n),b(n)
  do i=1,n
     a(i) = b(i) + 10
  enddo
end subroutine

program main
  real*8 a(20),b(20)
  a=1.0
  do i=1,20
     b(i)=((mod(i,5)+1)/10.0)*10;
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
