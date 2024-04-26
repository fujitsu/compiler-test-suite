common //c
integer :: x
call sub(x,x)
write(1,*) x
print *,'pass'
end

subroutine sub(a,b)
  integer :: a,b
  common //c
  a=c
  b=c
end subroutine
