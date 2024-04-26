integer :: x
call sub(x,x)
print *,'pass'
end

subroutine sub(a,b)
  integer::a,b
  a=b
  write(1,*) a,b
end
