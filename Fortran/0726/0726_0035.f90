call test01()
call test02()
print *,'pass'
end

subroutine test01()
type ty1
  integer  :: a01(1:10)=(/1,2,3,4,5,6,7,8,9,10/)
end type
type ty2
 type (ty1)  :: ip1(2:3)
end type
type ty3
 type (ty2),pointer  :: ip2(:)
end type
type (ty3) :: str(2),strs
data iaa /1/
if (iaa.ne.1) write(6,*) "NG"
allocate(str(1)%ip2(2:3))
allocate(str(2)%ip2(2:3))
allocate(strs%ip2(2:3))
do i=1,2
do j=2,3
do k=2,3
do kkk=1,10
if (str(i)%ip2(j)%ip1(k)%a01(kkk).ne.kkk) write(6,*) "NG"
end do
end do
end do
end do
do j=2,3
do k=2,3
do kkk=1,10
if (strs%ip2(j)%ip1(k)%a01(kkk).ne.kkk) write(6,*) "NG"
end do
end do
end do

end subroutine

subroutine test02()
type ty1
  integer  :: a01(1:10)=(/1,2,3,4,5,6,7,8,9,10/)
end type
type ty2
 type (ty1)  :: ip1(2:3)=ty1((/1,2,3,4,5,6,7,8,9,10/)*10)
end type
type ty3
 type (ty2),pointer  :: ip2(:)
end type
type (ty3) :: str(2),strs
data iaa /1/
if (iaa.ne.1) write(6,*) "NG"
allocate(str(1)%ip2(2:3))
allocate(str(2)%ip2(2:3))
allocate(strs%ip2(2:3))
do i=1,2
do j=2,3
do k=2,3
do kkk=1,10
if (str(i)%ip2(j)%ip1(k)%a01(kkk).ne.kkk*10) write(6,*) "NG"
end do
end do
end do
end do
do j=2,3
do k=2,3
do kkk=1,10
if (strs%ip2(j)%ip1(k)%a01(kkk).ne.kkk*10) write(6,*) "NG"
end do
end do
end do

end subroutine
