call dim1
call dim2
call dim3
call dim4
call dim5
call dim6
call dim7
print *,'pass'
contains
subroutine dim1
real::a(3)
a = fun1(3)
if(any(a/=(/(1.0,i=1,3)/))) print *,'err'
end subroutine
subroutine dim2
real::a(1,3)
a = fun2(1,3)
if(any(a/=reshape((/(1.0,i=1,3)/),(/1,3/)))) print *,'err'
end subroutine
subroutine dim3
real::a(1,1,3)
a = fun3(1,1,3)
if(any(a/=reshape((/(1.0,i=1,3)/),(/1,1,3/)))) print *,'err'
end subroutine
subroutine dim4
real::a(1,1,1,3)
a = fun4(1,1,1,3)
if(any(a/=reshape((/(1.0,i=1,3)/),(/1,1,1,3/)))) print *,'err'
end subroutine
subroutine dim5
real::a(1,1,1,1,3)
a = fun5(1,1,1,1,3)
if(any(a/=reshape((/(1.0,i=1,3)/),(/1,1,1,1,3/)))) print *,'err'
end subroutine
subroutine dim6
real::a(1,1,1,1,1,3)
a = fun6(1,1,1,1,1,3)
if(any(a/=reshape((/(1.0,i=1,3)/),(/1,1,1,1,1,3/)))) print *,'err'
end subroutine
subroutine dim7
real::a(1,1,1,1,1,1,3)
a = fun7(1,1,1,1,1,1,3)
if(any(a/=reshape((/(1.0,i=1,3)/),(/1,1,1,1,1,1,3/)))) print *,'err'
end subroutine
function fun1(n1)  result(x)
integer,intent(in) :: n1
real,allocatable,dimension(:)::x,y
allocate(y(n1))
y = 1.0
call move_alloc(y,x)
end function fun1
function fun2(n1,n2)  result(x)
integer,intent(in) :: n1,n2
real,allocatable,dimension(:,:)::x,y
allocate(y(n1,n2))
y = 1.0
call move_alloc(y,x)
end function fun2
function fun3(n1,n2,n3)  result(x)
integer,intent(in) :: n1,n2,n3
real,allocatable,dimension(:,:,:)::x,y
allocate(y(n1,n2,n3))
y = 1.0
call move_alloc(y,x)
end function fun3
function fun4(n1,n2,n3,n4)  result(x)
integer,intent(in) :: n1,n2,n3,n4
real,allocatable,dimension(:,:,:,:)::x,y
allocate(y(n1,n2,n3,n4))
y = 1.0
call move_alloc(y,x)
end function fun4
function fun5(n1,n2,n3,n4,n5)  result(x)
integer,intent(in) :: n1,n2,n3,n4,n5
real,allocatable,dimension(:,:,:,:,:)::x,y
allocate(y(n1,n2,n3,n4,n5))
y = 1.0
call move_alloc(y,x)
end function fun5
function fun6(n1,n2,n3,n4,n5,n6)  result(x)
integer,intent(in) :: n1,n2,n3,n4,n5,n6
real,allocatable,dimension(:,:,:,:,:,:)::x,y
allocate(y(n1,n2,n3,n4,n5,n6))
y = 1.0
call move_alloc(y,x)
end function fun6
function fun7(n1,n2,n3,n4,n5,n6,n7)  result(x)
integer,intent(in) :: n1,n2,n3,n4,n5,n6,n7
real,allocatable,dimension(:,:,:,:,:,:,:)::x,y
allocate(y(n1,n2,n3,n4,n5,n6,n7))
y = 1.0
call move_alloc(y,x)
end function fun7
end
