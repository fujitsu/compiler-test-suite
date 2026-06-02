interface
subroutine test01(aa)
integer,allocatable:: aa(:)
end subroutine
subroutine test02(aa)
integer,allocatable:: aa(:)
end subroutine
subroutine test03(aa)
integer,allocatable:: aa(:)
end subroutine
subroutine test04(aa)
integer,allocatable:: aa(:)
end subroutine
subroutine test05(aa)
integer,allocatable:: aa(:)
end subroutine
subroutine test06(aa)
integer,allocatable:: aa(:)
end subroutine
subroutine test11(aa)
integer,allocatable:: aa(:)
end subroutine
subroutine test12(aa)
integer,allocatable:: aa(:)
end subroutine
subroutine test13(aa)
integer,allocatable:: aa(:)
end subroutine
subroutine test14(aa)
integer,allocatable:: aa(:)
end subroutine
subroutine test15(aa)
integer,allocatable:: aa(:)
end subroutine
subroutine test16(aa)
integer,allocatable:: aa(:)
end subroutine
end interface
integer,allocatable:: a(:)
allocate(a(10))
a=(/1,2,3,4,5,6,7,8,9,0/)
call test01(a)
call test02(a)
call test03(a)
call test04(a)
call test05(a)
call test06(a)
call test11(a)
call test12(a)
call test13(a)
call test14(a)
call test15(a)
call test16(a)
print *,'pass'
end

subroutine test01(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
where((/.true./)) str1=(/ty1(1,aa,2)/)
if (any(str1(1)%a.ne.(/1,2,3,4,5,6,7,8,9,0/))) print *,'fail'
str1=str1
end

subroutine test02(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
where((/.true./)) str1=(/ty1(1,aa+1,2)/)
if (any(str1(1)%a.ne.(/1,2,3,4,5,6,7,8,9,0/)+1)) print *,'fail'
str1=str1
end

subroutine test03(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
where((/.true./)) str1=(/ty1(1,(/aa/),2)/)
if (any(str1(1)%a.ne.(/1,2,3,4,5,6,7,8,9,0/))) print *,'fail'
str1=str1
end

subroutine test04(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
where((/.true./)) str1=(/ty1(1,(/(aa(i),i=1,10)/),2)/)
if (any(str1(1)%a.ne.(/1,2,3,4,5,6,7,8,9,0/))) print *,'fail'
str1=str1
end

subroutine test05(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
where((/.true./)) str1=(/ty1(1,-aa,2)/)
if (any(str1(1)%a.ne.-(/1,2,3,4,5,6,7,8,9,0/))) print *,'fail'
str1=str1
end
subroutine test06(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
where((/.true./)) str1=(/ty1(1,aa*0,2)/)
if (any(str1(1)%a.ne.0*(/1,2,3,4,5,6,7,8,9,0/))) print *,'fail'
str1=str1
end




subroutine test11(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
forall (ii=1:1,jj=1:1)
str1=(/ty1(1,aa,2)/)
end forall
if (any(str1(1)%a.ne.(/1,2,3,4,5,6,7,8,9,0/))) print *,'fail'
str1=str1
end

subroutine test12(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
forall (ii=1:1,jj=1:1)
str1=(/ty1(1,aa+1,2)/)
end forall
if (any(str1(1)%a.ne.(/1,2,3,4,5,6,7,8,9,0/)+1)) print *,'fail'
str1=str1
end

subroutine test13(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
forall (ii=1:1,jj=1:1)
str1=(/ty1(1,(/aa/),2)/)
end forall
if (any(str1(1)%a.ne.(/1,2,3,4,5,6,7,8,9,0/))) print *,'fail'
str1=str1
end

subroutine test14(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
forall (ii=1:1,jj=1:1)
str1=(/ty1(1,(/(aa(i),i=1,10)/),2)/)
end forall
if (any(str1(1)%a.ne.(/1,2,3,4,5,6,7,8,9,0/))) print *,'fail'
str1=str1
end

subroutine test15(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
forall (ii=1:1,jj=1:1)
str1=(/ty1(1,-aa,2)/)
end forall
if (any(str1(1)%a.ne.-(/1,2,3,4,5,6,7,8,9,0/))) print *,'fail'
str1=str1
end
subroutine test16(aa)
integer,allocatable:: aa(:)
type ty1
 integer*1          :: i1
 integer,allocatable:: a(:)
 integer*2          :: i2
end type
type(ty1) :: str1(1)
forall (ii=1:1,jj=1:1)
str1=(/ty1(1,aa*0,2)/)
end forall
if (any(str1(1)%a.ne.0*(/1,2,3,4,5,6,7,8,9,0/))) print *,'fail'
str1=str1
end
