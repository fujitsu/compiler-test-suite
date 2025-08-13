integer,dimension (10)::x
x=1
call sub(x,x)
write(24,*) x
print *,'pass'
contains

subroutine sub(a,b)
  integer,dimension (*)::a,b
  a(11)=b(1)
end subroutine
end
