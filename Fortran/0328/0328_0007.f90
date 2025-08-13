common //c
integer :: x,y
call sub(x,y)
write(42,*) x,y
print *,'pass'
end

subroutine sub(a,b)
integer :: a,b
  common //c
  a=c
  b=c
end subroutine
