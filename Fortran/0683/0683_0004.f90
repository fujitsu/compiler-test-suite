subroutine sub
  real*8 a,b
  common/aaa/a(100000)
  common/bbb/b(100000)  
  do i=1,100000
     a(i) = sin(b(i))
  end do
end subroutine sub
!
real*8 a,b
common/aaa/a(100000)
common/bbb/b(100000)  
a = 0
b = 0
call sub
print *, 'PASS'
end

