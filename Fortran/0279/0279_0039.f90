type sum1
    integer :: color
    logical :: filled
    character :: x
    character :: x1
    integer*2 :: color1
    real :: y
end type sum1
type shape1
    integer :: color
    logical :: filled
    character :: x
    character :: x1
    integer*2 :: color1
    real :: y1
    type(sum1)::obj
end type shape1
type,extends(shape1)::shape2
 integer::z
 type(sum1)::obj1
end type
type,extends(shape2)::shape3
 complex::m
 type(sum1)::obj2
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

