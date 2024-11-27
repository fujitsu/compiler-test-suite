 integer(4),parameter,dimension(3)::yy1=(/1,2,3/)
 type x
  integer(4),allocatable,dimension(:)::x1
 end type
 type(x)::xv1
 xv1=x(yy1(1:3:2))
       if (any(xv1%x1/=(/1,3/)))write(6,*) "NG"
print *,'pass'
        end

