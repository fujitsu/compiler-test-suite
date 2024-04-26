integer :: x
x=10
call sub(x,x)
write(1,*) x
print *,'pass'
end

subroutine sub(a,b)
  integer :: a,b,step
  read *,step
  do i=1,10,step
    write(1,*) i
  end do
  a=b
end
