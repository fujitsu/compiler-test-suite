integer :: x
x=10
call sub(x,x)
write(22,*) x
print *,'pass'
end

subroutine sub(a,b)
  integer :: a,b,step
  read *,step
  do i=1,10,step
    write(22,*) i
  end do
  a=b
end
