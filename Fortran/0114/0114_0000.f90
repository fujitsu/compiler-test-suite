program main
real*8 a(10),b(10)
a = 0.
b = 1.

call sub1(a,b,10)
call sub2(a,b,10)
call sub3(a,b,10)
call sub4(a,b,10)
call sub5(a,b,10)
call sub6(a,b,10)

print *, sum(a)
end
  
subroutine sub1(a,b,n)
  real*8 a(n),b(n)

  do i = 1,n
     a(i) = b(i)
  enddo

end subroutine

subroutine sub2(a,b,n)
  real*8 a(n),b(n)
  do i = 1,n
     a(i) = b(i)
  enddo
end subroutine

subroutine sub3(a,b,n)
  real*8 a(n),b(n)
  do i = 1,n
     a(i) = b(i)
  enddo
end subroutine

subroutine sub4(a,b,n)
  real*8 a(n),b(n)
  do i = 1,n
     a(i) = b(i)
  enddo
end subroutine

subroutine sub5(a,b,n)
  real*8 a(n),b(n)
  do i = 1,n
     a(i) = b(i)
  enddo
end subroutine

subroutine sub6(a,b,n)
  real*8 a(n),b(n)
  do i = 1,n
     a(i) = b(i)
  enddo
end subroutine
