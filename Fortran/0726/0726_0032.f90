call test01()
call test02()
print *,'pass'
end

subroutine test01()
type ty1
  integer  :: a01=1
  integer  :: a02=2
  integer  :: a03=3
  integer  :: a04=4
end type
type ty2
 integer   :: a05=5
 type (ty1),pointer  :: s2
 integer   :: a06=6
 type (ty1)  :: s3
 integer   :: a07=7
 type (ty1),pointer  :: s4
end type
type ty3
 type (ty2)  :: ip1
 type (ty2)  :: ip2(2:3)
end type
type (ty3) :: str(3:5),strs
data iaa /1/
if (iaa.ne.1) write(6,*) "NG"
do i=3,5
if (str(i)%ip1%a05.ne.5) write(6,*) "NG"
if (str(i)%ip1%a06.ne.6) write(6,*) "NG"
if (str(i)%ip1%a07.ne.7) write(6,*) "NG"
if (str(i)%ip1%s3%a01.ne.1) write(6,*) "NG"
if (str(i)%ip1%s3%a02.ne.2) write(6,*) "NG"
if (str(i)%ip1%s3%a03.ne.3) write(6,*) "NG"
if (str(i)%ip1%s3%a04.ne.4) write(6,*) "NG"
do j=2,3
if (str(i)%ip2(j)%a05.ne.5) write(6,*) "NG"
if (str(i)%ip2(j)%a06.ne.6) write(6,*) "NG"
if (str(i)%ip2(j)%a07.ne.7) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a01.ne.1) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a02.ne.2) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a03.ne.3) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a04.ne.4) write(6,*) "NG"
end do
end do
if (strs%ip1%a05.ne.5) write(6,*) "NG"
if (strs%ip1%a06.ne.6) write(6,*) "NG"
if (strs%ip1%a07.ne.7) write(6,*) "NG"
if (strs%ip1%s3%a01.ne.1) write(6,*) "NG"
if (strs%ip1%s3%a02.ne.2) write(6,*) "NG"
if (strs%ip1%s3%a03.ne.3) write(6,*) "NG"
if (strs%ip1%s3%a04.ne.4) write(6,*) "NG"
do j=2,3
if (strs%ip2(j)%a05.ne.5) write(6,*) "NG"
if (strs%ip2(j)%a06.ne.6) write(6,*) "NG"
if (strs%ip2(j)%a07.ne.7) write(6,*) "NG"
if (strs%ip2(j)%s3%a01.ne.1) write(6,*) "NG"
if (strs%ip2(j)%s3%a02.ne.2) write(6,*) "NG"
if (strs%ip2(j)%s3%a03.ne.3) write(6,*) "NG"
if (strs%ip2(j)%s3%a04.ne.4) write(6,*) "NG"
end do
end subroutine

subroutine test02()
save
type ty1
  integer  :: a01=1
  integer  :: a02=2
  integer  :: a03=3
  integer  :: a04=4
end type
type ty2
 integer   :: a05=5
 type (ty1),pointer  :: s2
 integer   :: a06=6
 type (ty1)  :: s3
 integer   :: a07=7
 type (ty1),pointer  :: s4
end type
type ty3
 type (ty2)  :: ip1
 type (ty2)  :: ip2(2:3)
end type
type (ty3) :: str(3:5),strs
data iaa /1/
if (iaa.ne.1) write(6,*) "NG"
do i=3,5
if (str(i)%ip1%a05.ne.5) write(6,*) "NG"
if (str(i)%ip1%a06.ne.6) write(6,*) "NG"
if (str(i)%ip1%a07.ne.7) write(6,*) "NG"
if (str(i)%ip1%s3%a01.ne.1) write(6,*) "NG"
if (str(i)%ip1%s3%a02.ne.2) write(6,*) "NG"
if (str(i)%ip1%s3%a03.ne.3) write(6,*) "NG"
if (str(i)%ip1%s3%a04.ne.4) write(6,*) "NG"
do j=2,3
if (str(i)%ip2(j)%a05.ne.5) write(6,*) "NG"
if (str(i)%ip2(j)%a06.ne.6) write(6,*) "NG"
if (str(i)%ip2(j)%a07.ne.7) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a01.ne.1) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a02.ne.2) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a03.ne.3) write(6,*) "NG"
if (str(i)%ip2(j)%s3%a04.ne.4) write(6,*) "NG"
end do
end do
if (strs%ip1%a05.ne.5) write(6,*) "NG"
if (strs%ip1%a06.ne.6) write(6,*) "NG"
if (strs%ip1%a07.ne.7) write(6,*) "NG"
if (strs%ip1%s3%a01.ne.1) write(6,*) "NG"
if (strs%ip1%s3%a02.ne.2) write(6,*) "NG"
if (strs%ip1%s3%a03.ne.3) write(6,*) "NG"
if (strs%ip1%s3%a04.ne.4) write(6,*) "NG"
do j=2,3
if (strs%ip2(j)%a05.ne.5) write(6,*) "NG"
if (strs%ip2(j)%a06.ne.6) write(6,*) "NG"
if (strs%ip2(j)%a07.ne.7) write(6,*) "NG"
if (strs%ip2(j)%s3%a01.ne.1) write(6,*) "NG"
if (strs%ip2(j)%s3%a02.ne.2) write(6,*) "NG"
if (strs%ip2(j)%s3%a03.ne.3) write(6,*) "NG"
if (strs%ip2(j)%s3%a04.ne.4) write(6,*) "NG"
end do
end subroutine
