call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

subroutine test04()
type ty1
 character,allocatable :: a1(:)*4
 integer  ,allocatable :: a2(:)
end type
type (ty1),allocatable :: str(:)
allocate(str(2))
call sub1(str)
if (str(1)%a1(1).ne.'a') print *,'fail'
if (str(1)%a2(1).ne.1) print *,'fail'
call sub2(str)
if (str(1)%a1(1).ne.'a') print *,'fail'
if (str(1)%a2(1).ne.1) print *,'fail'
if (str(1)%a1(2).ne.'b') print *,'fail'
if (str(1)%a2(2).ne.2) print *,'fail'
contains
subroutine sub1(astr)
type (ty1),allocatable :: astr(:)
where ((/1/).eq.1)
 astr(1:1)=ty1((/'a'/),(/1/))
end where
end subroutine
subroutine sub2(astr)
type (ty1),allocatable :: astr(:)
where ((/1,2/).eq.(/1,2/))
 astr(1:2)=ty1((/'a','b'/),(/1,2/))
end where
end subroutine
end


subroutine test03()
type ty1
 character,allocatable :: a1(:)*4
 integer  ,allocatable :: a2(:)
end type
type (ty1) :: str(2)
call sub1(str)
if (str(1)%a1(1).ne.'a') print *,'fail'
if (str(1)%a2(1).ne.1) print *,'fail'
call sub2(str)
if (str(1)%a1(1).ne.'a') print *,'fail'
if (str(1)%a2(1).ne.1) print *,'fail'
if (str(1)%a1(2).ne.'b') print *,'fail'
if (str(1)%a2(2).ne.2) print *,'fail'
contains
subroutine sub1(astr)
type (ty1) :: astr(:)
where ((/1/).eq.1)
 astr=ty1((/'a'/),(/1/))
end where
end subroutine
subroutine sub2(astr)
type (ty1) :: astr(:)
where ((/1,2/).eq.(/1,2/))
 astr=ty1((/'a','b'/),(/1,2/))
end where
end subroutine
end

subroutine test02()
type ty1
 character,allocatable :: a1(:)*4
 integer  ,allocatable :: a2(:)
end type
type (ty1) :: str
call sub1(str)
if (str%a1(1).ne.'a') print *,'fail'
if (str%a2(1).ne.1) print *,'fail'
call sub2(str)
if (str%a1(1).ne.'a') print *,'fail'
if (str%a2(1).ne.1) print *,'fail'
if (str%a1(2).ne.'b') print *,'fail'
if (str%a2(2).ne.2) print *,'fail'
contains
subroutine sub1(astr)
type (ty1) :: astr
forall (i=1:1:1)
 astr=ty1((/'a'/),(/1/))
end forall
end subroutine
subroutine sub2(astr)
type (ty1) :: astr
forall (i=1:10:1)
 astr=ty1((/'a','b'/),(/1,2/))
end forall
end subroutine
end 

subroutine test01()
 type ty1
  character,allocatable :: a1(:)
  character,allocatable :: a2(:,:)*4
 end type
 type (ty1) :: str1,str2
 type (ty1) :: stra1(10),stra2(10)

 character*1,dimension(10) :: b1
 character*4,dimension(10,10) :: b2
integer arr(10)

 forall (i=1:10:1)
   str2 = ty1(b1,b2)
 end forall

 str2%a1='a'
 str2%a2='bvcx'
forall (i=1:10:1)
 str1=str2
 forall (j=1:10:1)
   stra1(j)=str1
   stra2(j)=stra1(j)
 end forall
end forall
 stra2 = stra2
if (.not.all(str1%a1.eq.'a')) print *,'fail'

arr=(/1,1,1,1,1,2,2,2,2,2/)
where(arr.eq.1)
  stra1=ty1((/('v',k=1,10)/),b2)
else where(arr.ne.1)
  stra1=ty1((/('z',k=1,10)/),b2)
end where
if (.not.all(stra1(1)%a1.eq.(/('v',k=1,10)/))) print *,'fail'
if (.not.all(stra1(6)%a1.eq.(/('z',k=1,10)/))) print *,'fail'

end subroutine
