call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
print *,'pass'
end

subroutine test01()
type ty01
 integer    :: a01 =1 
 integer    :: a02 =2
 integer    :: a03 =3
 integer    :: a04 =4
end type
type (ty01),allocatable,dimension(:) ::str
10 continue 
allocate(str(2),stat=ierr)
if (ierr.ne.0) then
 if (str(1)%a01.ne.1) write(6,*) "NG"
 if (str(1)%a02.ne.2) write(6,*) "NG"
 if (str(1)%a03.ne.3) write(6,*) "NG"
 if (str(1)%a04.ne.4) write(6,*) "NG"
 if (str(2)%a01.ne.1) write(6,*) "NG"
 if (str(2)%a02.ne.2) write(6,*) "NG"
 if (str(2)%a03.ne.3) write(6,*) "NG"
 if (str(2)%a04.ne.4) write(6,*) "NG"
end if
end

subroutine test02()
type ty01
 integer    :: a01 =1 
 integer    :: a02 =2
 integer    :: a03 =3
 integer    :: a04 =4
end type
type (ty01),allocatable,dimension(:) ::str
10 continue 
allocate(str(0:1),stat=ierr)
if (ierr.ne.0) then
 if (str(1)%a01.ne.1) write(6,*) "NG"
 if (str(1)%a02.ne.2) write(6,*) "NG"
 if (str(1)%a03.ne.3) write(6,*) "NG"
 if (str(1)%a04.ne.4) write(6,*) "NG"
 if (str(0)%a01.ne.1) write(6,*) "NG"
 if (str(0)%a02.ne.2) write(6,*) "NG"
 if (str(0)%a03.ne.3) write(6,*) "NG"
 if (str(0)%a04.ne.4) write(6,*) "NG"
end if
end

subroutine test03()
type ty01
 integer    :: a01 =1 
 integer    :: a02 =2
 integer    :: a03 =3
 integer    :: a04 =4
end type
type (ty01),allocatable,dimension(:,:) ::str
10 continue 
allocate(str(2,2),stat=ierr)
if (ierr.ne.0) then
 do i1=1,2
 do i2=1,2
 if (str(i1,i2)%a01.ne.1) write(6,*) "NG"
 if (str(i1,i2)%a02.ne.2) write(6,*) "NG"
 if (str(i1,i2)%a03.ne.3) write(6,*) "NG"
 if (str(i1,i2)%a04.ne.4) write(6,*) "NG"
 end do
 end do
end if
end

subroutine test04()
type ty01
 integer    :: a01 =1 
 integer    :: a02 =2
 integer    :: a03 =3
 integer    :: a04 =4
end type
type ty02
 type (ty01) :: sss
end type
type (ty02),allocatable,dimension(:) ::str
10 continue 
allocate(str(2),stat=ierr)
if (ierr.ne.0) then
 if (str(1)%sss%a01.ne.1) write(6,*) "NG"
 if (str(1)%sss%a02.ne.2) write(6,*) "NG"
 if (str(1)%sss%a03.ne.3) write(6,*) "NG"
 if (str(1)%sss%a04.ne.4) write(6,*) "NG"
 if (str(2)%sss%a01.ne.1) write(6,*) "NG"
 if (str(2)%sss%a02.ne.2) write(6,*) "NG"
 if (str(2)%sss%a03.ne.3) write(6,*) "NG"
 if (str(2)%sss%a04.ne.4) write(6,*) "NG"
end if
end

subroutine test05()
type ty01
 integer    :: a01 =1 
 integer    :: a02 =2
 integer    :: a03 =3
 integer    :: a04 =4
end type
type ty02
 type (ty01) :: sss(1)
end type
type (ty02),allocatable,dimension(:) ::str
10 continue 
allocate(str(2),stat=ierr)
if (ierr.ne.0) then
 if (str(1)%sss(1)%a01.ne.1) write(6,*) "NG"
 if (str(1)%sss(1)%a02.ne.2) write(6,*) "NG"
 if (str(1)%sss(1)%a03.ne.3) write(6,*) "NG"
 if (str(1)%sss(1)%a04.ne.4) write(6,*) "NG"
 if (str(2)%sss(1)%a01.ne.1) write(6,*) "NG"
 if (str(2)%sss(1)%a02.ne.2) write(6,*) "NG"
 if (str(2)%sss(1)%a03.ne.3) write(6,*) "NG"
 if (str(2)%sss(1)%a04.ne.4) write(6,*) "NG"
end if
end

subroutine test06()
type ty01
 integer    :: a01 =1
 integer    :: a02 =2
 integer    :: a03 =3
 integer    :: a04 =4
end type
type ty02
 type (ty01) :: sss(2,2)
end type
type (ty02),allocatable,dimension(:) ::str
10 continue
allocate(str(2),stat=ierr)
if (ierr.ne.0) then
 do i1=1,2
 do i2=1,2
 if (str(1)%sss(i1,i2)%a01.ne.1) write(6,*) "NG"
 if (str(1)%sss(i1,i2)%a02.ne.2) write(6,*) "NG"
 if (str(1)%sss(i1,i2)%a03.ne.3) write(6,*) "NG"
 if (str(1)%sss(i1,i2)%a04.ne.4) write(6,*) "NG"
 if (str(2)%sss(i1,i2)%a01.ne.1) write(6,*) "NG"
 if (str(2)%sss(i1,i2)%a02.ne.2) write(6,*) "NG"
 if (str(2)%sss(i1,i2)%a03.ne.3) write(6,*) "NG"
 if (str(2)%sss(i1,i2)%a04.ne.4) write(6,*) "NG"
 end do
 enddo
end if
end

subroutine test07()
type ty01
 integer    :: a01 =1
 integer    :: a02 =2
 integer    :: a03 =3
 integer    :: a04 =4
end type
type ty02
 type (ty01) :: sss(1) =ty01(11,12,13,14)
end type
type (ty02),allocatable,dimension(:) ::str
10 continue
allocate(str(2),stat=ierr)
if (ierr.ne.0) then
 if (str(1)%sss(1)%a01.ne.11) write(6,*) "NG"
 if (str(1)%sss(1)%a02.ne.12) write(6,*) "NG"
 if (str(1)%sss(1)%a03.ne.13) write(6,*) "NG"
 if (str(1)%sss(1)%a04.ne.14) write(6,*) "NG"
 if (str(2)%sss(1)%a01.ne.11) write(6,*) "NG"
 if (str(2)%sss(1)%a02.ne.12) write(6,*) "NG"
 if (str(2)%sss(1)%a03.ne.13) write(6,*) "NG"
 if (str(2)%sss(1)%a04.ne.14) write(6,*) "NG"
end if
end

subroutine test08()
type ty01
 integer    :: a01(2) =(/1,11/)
 integer    :: a02(2) =(/2,12/)
 integer    :: a03(2) =(/3,13/)
 integer    :: a04(2) =(/4,14/)
end type
type ty02
 type (ty01) :: sss(1)
end type
type (ty02),allocatable,dimension(:) ::str
10 continue
allocate(str(2),stat=ierr)
if (ierr.ne.0) then
 if (str(1)%sss(1)%a01(1).ne.1) write(6,*) "NG"
 if (str(1)%sss(1)%a02(1).ne.2) write(6,*) "NG"
 if (str(1)%sss(1)%a03(1).ne.3) write(6,*) "NG"
 if (str(1)%sss(1)%a04(1).ne.4) write(6,*) "NG"
 if (str(2)%sss(1)%a01(1).ne.1) write(6,*) "NG"
 if (str(2)%sss(1)%a02(1).ne.2) write(6,*) "NG"
 if (str(2)%sss(1)%a03(1).ne.3) write(6,*) "NG"
 if (str(2)%sss(1)%a04(1).ne.4) write(6,*) "NG"
 if (str(1)%sss(1)%a01(2).ne.11) write(6,*) "NG"
 if (str(1)%sss(1)%a02(2).ne.12) write(6,*) "NG"
 if (str(1)%sss(1)%a03(2).ne.13) write(6,*) "NG"
 if (str(1)%sss(1)%a04(2).ne.14) write(6,*) "NG"
 if (str(2)%sss(1)%a01(2).ne.11) write(6,*) "NG"
 if (str(2)%sss(1)%a02(2).ne.12) write(6,*) "NG"
 if (str(2)%sss(1)%a03(2).ne.13) write(6,*) "NG"
 if (str(2)%sss(1)%a04(2).ne.14) write(6,*) "NG"
end if
end
