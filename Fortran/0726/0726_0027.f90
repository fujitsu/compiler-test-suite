call test01(1)
call test01(2)
call test03()
call test04()
print *,'pass'
end

subroutine test01(i)
integer,pointer,dimension(:) :: poi
save poi
integer:: arr(10)
if (i.eq.1) then
  allocate(poi(1:10))
  poi=(/1,2,3,4,5,6,7,8,9,10/)
end if
if (associated(poi)) then 
    arr=poi
endif
end

subroutine test03()
type ty1
  integer  :: a01=1
  integer  :: a02=2
  integer  :: a03=3
  integer  :: a04=4
end type
type ty2
 type (ty1)  :: s2
 type (ty1)  :: s3
 integer   :: a05=5
end type
type ty3
 type (ty2) ,pointer :: ip1
 type (ty2) ,pointer :: ip2(:)
end type
type (ty3) :: str(2)
do i=1,2
allocate(str(i)%ip1)
allocate(str(i)%ip2(2:3))
end do
do i=1,2
if (str(i)%ip1%s2%a01.ne.1) write(6,*) "NG"
if (str(i)%ip1%s2%a02.ne.2) write(6,*) "NG"
if (str(i)%ip1%s2%a03.ne.3) write(6,*) "NG"
if (str(i)%ip1%s2%a04.ne.4) write(6,*) "NG"
if (str(i)%ip1%a05.ne.5) write(6,*) "NG"
if (str(i)%ip1%s3%a01.ne.1) write(6,*) "NG"
if (str(i)%ip1%s3%a02.ne.2) write(6,*) "NG"
if (str(i)%ip1%s3%a03.ne.3) write(6,*) "NG"
if (str(i)%ip1%s3%a04.ne.4) write(6,*) "NG"
do j=2,3
if (str(i)%ip2(j)%s2%a01.ne.1) write(6,*) "NG"
if (str(i)%ip2(j)%s2%a02.ne.2) write(6,*) "NG"
if (str(i)%ip2(j)%s2%a03.ne.3) write(6,*) "NG"
if (str(i)%ip2(j)%s2%a04.ne.4) write(6,*) "NG"
if (str(i)%ip2(j)%a05.ne.5) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a01.ne.1) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a02.ne.2) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a03.ne.3) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a04.ne.4) write(6,*) "NG"
end do
end do
end subroutine

subroutine test04()
type ty1
  integer  :: a01=1
  integer  :: a02=2
  integer  :: a03=3
  integer  :: a04=4
end type
type ty2
 type (ty1),pointer  :: s2
 integer   :: a05=5
 type (ty1),pointer  :: s3
end type
type ty3
 type (ty2) ,pointer :: ip1
 type (ty2) ,pointer :: ip2(:)
end type
type (ty3) :: str(2)
do i=1,2
allocate(str(i)%ip1)
allocate(str(i)%ip1%s2)
allocate(str(i)%ip1%s3)
allocate(str(i)%ip2(2:3))
do j=2,3
allocate(str(i)%ip2(j)%s2)
allocate(str(i)%ip2(j)%s3)
end do
end do
do i=1,2
if (str(i)%ip1%s2%a01.ne.1) write(6,*) "NG"
if (str(i)%ip1%s2%a02.ne.2) write(6,*) "NG"
if (str(i)%ip1%s2%a03.ne.3) write(6,*) "NG"
if (str(i)%ip1%s2%a04.ne.4) write(6,*) "NG"
if (str(i)%ip1%a05.ne.5) write(6,*) "NG"
if (str(i)%ip1%s3%a01.ne.1) write(6,*) "NG"
if (str(i)%ip1%s3%a02.ne.2) write(6,*) "NG"
if (str(i)%ip1%s3%a03.ne.3) write(6,*) "NG"
if (str(i)%ip1%s3%a04.ne.4) write(6,*) "NG"
do j=2,3
if (str(i)%ip2(j)%s2%a01.ne.1) write(6,*) "NG"
if (str(i)%ip2(j)%s2%a02.ne.2) write(6,*) "NG"
if (str(i)%ip2(j)%s2%a03.ne.3) write(6,*) "NG"
if (str(i)%ip2(j)%s2%a04.ne.4) write(6,*) "NG"
if (str(i)%ip2(j)%a05.ne.5) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a01.ne.1) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a02.ne.2) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a03.ne.3) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a04.ne.4) write(6,*) "NG"
end do
end do
end subroutine
