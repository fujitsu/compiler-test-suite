call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08a()
print *,'pass'
end

subroutine test01()
integer(kind=1),parameter :: i1=10
integer(kind=2) ,parameter:: i2=10
integer(kind=4) ,parameter:: i3=10
integer(kind=8) ,parameter:: i4=10
 call ssss() 
contains
 subroutine ssss()
 character(:),allocatable::r1,r2,r3,r4
 allocate(character(i1)::r1)
 allocate(character(i2)::r2)
 allocate(character(i3)::r3)
 allocate(character(i4)::r4)
 r1='a'
 r2='a'
 r3='a'
 r4='a'
 end subroutine
end

subroutine test02()
integer(kind=1),parameter :: i1=10
integer(kind=2) ,parameter:: i2=10
integer(kind=4) ,parameter:: i3=10
integer(kind=8) ,parameter:: i4=10
 call ssss()
contains
 subroutine ssss()
 character(:),allocatable::r1,r2,r3,r4
 allocate(character(i1+1_1)::r1)
 allocate(character(i2+1_1)::r2)
 allocate(character(i3+1_1)::r3)
 allocate(character(i4+1_1)::r4)
 r1='a'
 r2='a'
 r3='a'
 r4='a'
 end subroutine
end

subroutine test03()
integer(kind=1),parameter :: i1=10
integer(kind=2) ,parameter:: i2=10
integer(kind=4) ,parameter:: i3=10
integer(kind=8) ,parameter:: i4=10
 call ssss()
contains
 subroutine ssss()
 character(:),allocatable::r1,r2,r3,r4
 allocate(character(i1+1_2)::r1)
 allocate(character(i2+1_2)::r2)
 allocate(character(i3+1_2)::r3)
 allocate(character(i4+1_2)::r4)
 r1='a'
 r2='a'
 r3='a'
 r4='a'
 end subroutine
end

subroutine test04()
integer(kind=1),parameter :: i1=10
integer(kind=2) ,parameter:: i2=10
integer(kind=4) ,parameter:: i3=10
integer(kind=8) ,parameter:: i4=10
 call ssss()
contains
 subroutine ssss()
 character(:),allocatable::r1,r2,r3,r4
 allocate(character(i1+1_4)::r1)
 allocate(character(i2+1_4)::r2)
 allocate(character(i3+1_4)::r3)
 allocate(character(i4+1_4)::r4)
 r1='a'
 r2='a'
 r3='a'
 r4='a'
 end subroutine
end

subroutine test05()
integer(kind=1),parameter :: i1=10
integer(kind=2) ,parameter:: i2=10
integer(kind=4) ,parameter:: i3=10
integer(kind=8) ,parameter:: i4=10
 call ssss()
contains
 subroutine ssss()
 character(:),allocatable::r1,r2,r3,r4
 allocate(character(i1+1_8)::r1)
 allocate(character(i2+1_8)::r2)
 allocate(character(i3+1_8)::r3)
 allocate(character(i4+1_8)::r4)
 r1='a'
 r2='a'
 r3='a'
 r4='a'
 end subroutine
end

subroutine test06()
integer(kind=1),parameter :: i1=10
integer(kind=2) ,parameter:: i2=10
integer(kind=4) ,parameter:: i3=10
integer(kind=8) ,parameter:: i4=10
 call ssss()
contains
 subroutine ssss()
 character(:),allocatable::r1,r2,r3,r4
 allocate(character((i1))::r1)
 allocate(character((i2))::r2)
 allocate(character((i3))::r3)
 allocate(character((i4))::r4)
 r1='a'
 r2='a'
 r3='a'
 r4='a'
 end subroutine
end

subroutine test07()
integer(kind=1),parameter :: i1=10
integer(kind=2) ,parameter:: i2=10
integer(kind=4) ,parameter:: i3=10
integer(kind=8) ,parameter:: i4=10
 call ssss()
contains
 subroutine ssss()
 character(:),allocatable::r1,r2,r3,r4
 allocate(character(+i1 )::r1)
 allocate(character(+i2 )::r2)
 allocate(character(+i3 )::r3)
 allocate(character(+i4 )::r4)
 r1='a'
 r2='a'
 r3='a'
 r4='a'
 end subroutine
end

subroutine test08a()
integer(kind=1),parameter :: i1=10
integer(kind=2) ,parameter:: i2=10
integer(kind=4) ,parameter:: i3=10
integer(kind=8) ,parameter:: i4=10
 call ssss()
contains
 subroutine ssss()
 character(-i1),allocatable::r1
 character(-i2),allocatable::r2
 character(-i3),allocatable::r3
 character(-i4),allocatable::r4
 allocate(r1)
 allocate(r2)
 allocate(r3)
 allocate(r4)
 r1='a'
 r2='a'
 r3='a'
 r4='a'
 end subroutine
end

subroutine test08()
integer(kind=1),parameter :: i1=10
integer(kind=2) ,parameter:: i2=10
integer(kind=4) ,parameter:: i3=10
integer(kind=8) ,parameter:: i4=10
 call ssss()
contains
 subroutine ssss()
 character(:),allocatable::r1,r2,r3,r4
 allocate(character(-i1 )::r1)
 allocate(character(-i2 )::r2)
 allocate(character(-i3 )::r3)
 allocate(character(-i4 )::r4)
 r1='a'
 r2='a'
 r3='a'
 r4='a'
 end subroutine
end
