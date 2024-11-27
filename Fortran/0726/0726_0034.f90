call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
type ty1
  integer  :: a01(-10:-1)=1
  integer  :: a02(1:10)=2
  integer  :: a03(2:10)=3
  integer  :: a04(-10:10)=4
  integer  :: a05(0:10)=5
  integer  :: a06(-10:0)=6
end type
type ty3
 type (ty1)  :: ip1
 type (ty1)  :: ip2(2:3)
end type
type (ty3) :: str(2),strs
data iaa /1/
if (iaa.ne.1) write(6,*) "NG"
do i=1,2
do k=-10,-1
if (str(i)%ip1%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (str(i)%ip1%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (str(i)%ip1%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (str(i)%ip1%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (str(i)%ip1%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (str(i)%ip1%a06(k).ne.6) write(6,*) "NG"
end do
do j=2,3
do k=-10,-1
if (str(i)%ip2(j)%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (str(i)%ip2(j)%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (str(i)%ip2(j)%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (str(i)%ip2(j)%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (str(i)%ip2(j)%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (str(i)%ip2(j)%a06(k).ne.6) write(6,*) "NG"
end do
end do
end do
do k=-10,-1
if (strs%ip1%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (strs%ip1%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (strs%ip1%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (strs%ip1%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (strs%ip1%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (strs%ip1%a06(k).ne.6) write(6,*) "NG"
end do
do j=2,3
do k=-10,-1
if (strs%ip2(j)%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (strs%ip2(j)%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (strs%ip2(j)%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (strs%ip2(j)%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (strs%ip2(j)%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (strs%ip2(j)%a06(k).ne.6) write(6,*) "NG"
end do
end do

end subroutine

subroutine test02()
save
type ty1
  integer  :: a01(-10:-1)=1
  integer  :: a02(1:10)=2
  integer  :: a03(2:10)=3
  integer  :: a04(-10:10)=4
  integer  :: a05(0:10)=5
  integer  :: a06(-10:0)=6
end type
type ty3
 type (ty1)  :: ip1
 type (ty1)  :: ip2(2:3)
end type
type (ty3) :: str(2),strs
data iaa /1/
if (iaa.ne.1) write(6,*) "NG"
do i=1,2
do k=-10,-1
if (str(i)%ip1%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (str(i)%ip1%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (str(i)%ip1%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (str(i)%ip1%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (str(i)%ip1%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (str(i)%ip1%a06(k).ne.6) write(6,*) "NG"
end do
do j=2,3
do k=-10,-1
if (str(i)%ip2(j)%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (str(i)%ip2(j)%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (str(i)%ip2(j)%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (str(i)%ip2(j)%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (str(i)%ip2(j)%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (str(i)%ip2(j)%a06(k).ne.6) write(6,*) "NG"
end do
end do
end do
do k=-10,-1
if (strs%ip1%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (strs%ip1%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (strs%ip1%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (strs%ip1%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (strs%ip1%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (strs%ip1%a06(k).ne.6) write(6,*) "NG"
end do
do j=2,3
do k=-10,-1
if (strs%ip2(j)%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (strs%ip2(j)%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (strs%ip2(j)%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (strs%ip2(j)%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (strs%ip2(j)%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (strs%ip2(j)%a06(k).ne.6) write(6,*) "NG"
end do
end do

end subroutine
subroutine test03()
type ty1
  integer  :: a01(-10:-1)=1
  integer  :: a02(1:10)=2
  integer  :: a03(2:10)=3
  integer  :: a04(-10:10)=4
  integer  :: a05(0:10)=5
  integer  :: a06(-10:0)=6
end type
type ty3
 type (ty1),pointer  :: ip1
 type (ty1),pointer  :: ip2(:)
end type
type (ty3) :: str(2),strs
data iaa /1/
allocate(strs%ip1)
allocate(strs%ip2(2:3))
allocate(str(1)%ip1)
allocate(str(1)%ip2(2:3))
allocate(str(2)%ip1)
allocate(str(2)%ip2(2:3))
if (iaa.ne.1) write(6,*) "NG"
do i=1,2
do k=-10,-1
if (str(i)%ip1%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (str(i)%ip1%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (str(i)%ip1%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (str(i)%ip1%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (str(i)%ip1%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (str(i)%ip1%a06(k).ne.6) write(6,*) "NG"
end do
do j=2,3
do k=-10,-1
if (str(i)%ip2(j)%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (str(i)%ip2(j)%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (str(i)%ip2(j)%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (str(i)%ip2(j)%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (str(i)%ip2(j)%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (str(i)%ip2(j)%a06(k).ne.6) write(6,*) "NG"
end do
end do
end do
do k=-10,-1
if (strs%ip1%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (strs%ip1%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (strs%ip1%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (strs%ip1%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (strs%ip1%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (strs%ip1%a06(k).ne.6) write(6,*) "NG"
end do
do j=2,3
do k=-10,-1
if (strs%ip2(j)%a01(k).ne.1) write(6,*) "NG"
end do
do k=1,10
if (strs%ip2(j)%a02(k).ne.2) write(6,*) "NG"
end do
do k=2,10
if (strs%ip2(j)%a03(k).ne.3) write(6,*) "NG"
end do
do k=-10,10
if (strs%ip2(j)%a04(k).ne.4) write(6,*) "NG"
end do
do k=0,10
if (strs%ip2(j)%a05(k).ne.5) write(6,*) "NG"
end do
do k=-10,0
if (strs%ip2(j)%a06(k).ne.6) write(6,*) "NG"
end do
end do

end subroutine
