interface
subroutine test01(ia,a1)
character(len=*),allocatable ::  a1(:)
end subroutine
end interface
character(len=1),allocatable ::  aa(:)
do i=1,1
call test01(1,aa)
end do
call test02()
call test03()
print *,'pass'
end

subroutine test01(ia,a1)
character(len=*),allocatable ::  a1(:)
allocate(a1(10))
   if (len(a1(1)).ne.ia) print *,'fail'
end

subroutine test02()
do ii=1,10
   if (len(cfun(ii)).ne.ii) print *,'fail'
end do
contains
function cfun(ia) result(ca)
character(len=ia+int(0.0)),allocatable ::  ca(:)
allocate(ca(10))
ca='aaaaaaaaaaaa'(1:ia)
end function
end

subroutine test03()
type ty1
 character(1) ,allocatable:: a1(:)
 character(2) ,allocatable:: a2(:)
 character(3) ,allocatable:: a3(:)
 character(4) ,allocatable:: a4(:)
end type
type(ty1) :: str
str= ty1(cfun(1),cfun(2),cfun(3),cfun(4))
do i=1,10
if (str%a1(i).ne.'1') print *,'fail'
if (str%a2(i).ne.'12') print *,'fail'
if (str%a3(i).ne.'123') print *,'fail'
if (str%a4(i).ne.'1234') print *,'fail'
end do
contains
function cfun(ia) result(ca)
character(len=ia+0),allocatable ::  ca(:)
allocate(ca(10))
ca='123456789aaa'(1:ia)
end function
end

