type sum1
    integer :: color(2)
    real :: filled(3)
    character :: x(2)
    character :: x1(2)
    integer*2 :: color1(2)
    complex :: y(4)
end type sum1
type shape1
    integer :: color(2)
    real :: filled(3)
    character :: x(2)
    character :: x1(2)
    integer*2 :: color1(2)
    complex :: y(4)
    type(sum1)::obj(3)
end type shape1
type,extends(shape1)::shape2
 integer::z(5)
 type(sum1)::obj1(3)
end type
type,extends(shape2)::shape3
 logical::m(6)
end type
 type(shape1) ::  sh
 type(shape2) ::  sh1
 type(shape3) ::  sh2
integer,parameter::a=storage_size(sh)
integer,parameter::b=storage_size(sh1)
integer,parameter::c=storage_size(sh2)
if (a .ne. storage_size(sh))print*,"100"
if (b .ne. storage_size(sh1))print*,"101"
if (c .ne. storage_size(sh2))print*,"102"
print*,"PASS"
end

