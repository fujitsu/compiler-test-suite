type x
integer,allocatable::xx1(:)
end type
type(x)::y
integer,allocatable::yy1(:)
y=x(yy1)
if (allocated(y%xx1))write(6,*) "NG"
print *,'pass'
end
