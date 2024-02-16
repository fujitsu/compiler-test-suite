subroutine sub(a,b)
  integer*1 a(2),b(2)
  integer*8::i,j
  do i=1,2
     a(i) = b(i)
     do j=1,2
       b(j) = -1
     end do
  end do
  print *,a
end subroutine sub
!
integer*1 a(2),b(2)
a = 0
b = (/1,2/)
call sub(a,b)
end program
