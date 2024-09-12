real::a
a=1.0
call foo(a)
print *,'pass'
contains
 subroutine foo( d )
 real,intent(out) :: d
d=0
 d=d+1.0
end 
end

