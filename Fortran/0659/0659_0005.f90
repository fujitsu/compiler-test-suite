call sub1()
call sub2()
call sub3()
print *,'pass'
end

subroutine sub1()
character(100) ,allocatable:: arr(:,:,:)
allocate(arr(10,20,30),stat=ia)
if (ia .ne. 0) print *,'err'
if (.not.allocated(arr)) print *,'err'
call isub(arr)
if (allocated(arr)) print *,'err'
allocate(arr(10,20,30),stat=ia)
call isub1(arr,arr)
if (allocated(arr)) print *,'err'

contains
subroutine isub(aaa)
character(100) ,allocatable:: aaa(:,:,:)
intent(out) :: aaa
end subroutine
subroutine isub1(bbb,aaa)
character(100) ,allocatable:: bbb(:,:,:)
character(100) ,allocatable:: aaa(:,:,:)
intent(out) :: aaa
end subroutine

end subroutine

module mod2
type ty1
sequence
 integer,allocatable :: a1(:) 
 integer,allocatable :: a2(:,:)
 integer,allocatable :: a3(:,:,:)
 integer :: arr =1
end type
type (ty1) ,save :: aa1
type (ty1) ,save,private :: aa2

contains
subroutine mod2_sub2(saa)
type(ty1) ,intent(out),optional :: saa 
end subroutine
subroutine mod2_sub1(saa)
type(ty1) ,intent(out),optional :: saa 
allocate(aa2%a1(10))
call mod2_sub2(aa2)
if (allocated(aa2%a1)) print *,'err'
end subroutine
end

subroutine sub2()
use mod2
type(ty1) :: sss
allocate(sss%a1(10),sss%a2(10,10),sss%a3(10,10,10))
sss%arr =100
call mod2_sub1(sss)
if (allocated(sss%a1)) print *,'err'
allocate(aa1%a1(10))
call mod2_sub1(aa1)
if (allocated(aa1%a1)) print *,'err'
end subroutine

subroutine sub3()
use mod2,aa3=>aa1
type(ty1) :: sss
allocate(sss%a1(10),sss%a2(10,10),sss%a3(10,10,10))
sss%arr =100
call mod2_sub1(sss)
if (allocated(sss%a1)) print *,'err'
allocate(aa3%a1(10))
call mod2_sub1(aa3)
if (allocated(aa3%a1)) print *,'err'
end subroutine
