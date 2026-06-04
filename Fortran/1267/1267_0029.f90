subroutine sub(a,sum)
  integer a(10000), sum
!OCL EVAL
DO I=1,10000
SUM=SUM+A(I)
ENDDO
end subroutine sub

program main
  integer, parameter::n = 10000
  integer a(n), s
  s = 0
  a=1
  call sub(a,s)
  do i=1,n
     if (s .ne. sum(a)) then
        print *, i, a(i)
        stop
     endif
  end do
  print *, 'PASS'
  
end program main
