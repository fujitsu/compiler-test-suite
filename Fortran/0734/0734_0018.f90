integer,dimension(4)::a=(/100,200,300,400/)
integer,dimension(4)::b=(/100,200,300,400/)
integer,dimension(3)::x
pointer (j,x)
j=loc(a(2))
forall (i=1:3)
 x(i)=a(i)+1
end forall
j=loc(b(2))
do i=1,3
 x(i)=b(i)+1
end do
if (any((/100,101,201,301/)/=a))print *,'erorr-1'
if (any((/100,101,102,103/)/=b))print *,'erorr-2'
 print *,'pass'
end
