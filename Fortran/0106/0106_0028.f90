real*8, dimension(10) :: a
a = 1
call test(a)
write(6,*) ' end '
end
subroutine test(a)
real*8, dimension(10) :: a
  do i=1, 10
     a(i) = 0
  end do
end subroutine test
