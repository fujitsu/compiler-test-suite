integer,dimension(10)::x
integer,dimension(20)::y
integer,dimension(20)::z
call sub(x,y,z)
       print *,'pass'
contains

subroutine sub (a,b,c)
  integer,dimension(*)::a,b,c
  a(10)=b(1)
  b(4)=c(4)
end subroutine
end
