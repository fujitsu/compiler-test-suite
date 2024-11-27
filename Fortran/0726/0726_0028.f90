call test05()
print *,'pass'
end

subroutine test05()
type ty1
  integer  :: a01=1
  integer  :: a02=2
  type (ty2),pointer :: ia
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
allocate(str(i)%ip1%s2%ia)
allocate(str(i)%ip1%s3%ia)
allocate(str(i)%ip2(2:3))
do j=2,3
allocate(str(i)%ip2(j)%s2%ia)
allocate(str(i)%ip2(j)%s3%ia)
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
if (str(i)%ip1%s2%ia%s2%a01.ne.1) write(6,*) "NG"
if (str(i)%ip1%s2%ia%s2%a02.ne.2) write(6,*) "NG"
if (str(i)%ip1%s2%ia%s2%a03.ne.3) write(6,*) "NG"
if (str(i)%ip1%s2%ia%s2%a04.ne.4) write(6,*) "NG"
if (str(i)%ip1%s2%ia%a05.ne.5) write(6,*) "NG"
if (str(i)%ip1%s3%ia%s2%a01.ne.1) write(6,*) "NG"
if (str(i)%ip1%s3%ia%s2%a02.ne.2) write(6,*) "NG"
if (str(i)%ip1%s3%ia%s2%a03.ne.3) write(6,*) "NG"
if (str(i)%ip1%s3%ia%s2%a04.ne.4) write(6,*) "NG"
if (str(i)%ip1%s2%ia%s3%a01.ne.1) write(6,*) "NG"
if (str(i)%ip1%s2%ia%s3%a02.ne.2) write(6,*) "NG"
if (str(i)%ip1%s2%ia%s3%a03.ne.3) write(6,*) "NG"
if (str(i)%ip1%s2%ia%s3%a04.ne.4) write(6,*) "NG"
if (str(i)%ip1%s3%ia%a05.ne.5) write(6,*) "NG"
if (str(i)%ip1%s3%ia%s3%a01.ne.1) write(6,*) "NG"
if (str(i)%ip1%s3%ia%s3%a02.ne.2) write(6,*) "NG"
if (str(i)%ip1%s3%ia%s3%a03.ne.3) write(6,*) "NG"
if (str(i)%ip1%s3%ia%s3%a04.ne.4) write(6,*) "NG"
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
