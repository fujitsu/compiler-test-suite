call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

module  mod01
type ty01
 integer    :: a01 =1
 integer    :: a02 =2
 integer    :: a03 =3
 integer    :: a04 =4
end type
type (ty01),allocatable,dimension(:) ::str
end

subroutine test01()
use mod01
10 continue 
allocate(str(2),stat=ierr)
if (ierr.eq.0) then
 if (str(1)%a01.ne.1) write(6,*) "NG"
 if (str(1)%a02.ne.2) write(6,*) "NG"
 if (str(1)%a03.ne.3) write(6,*) "NG"
 if (str(1)%a04.ne.4) write(6,*) "NG"
 if (str(2)%a01.ne.1) write(6,*) "NG"
 if (str(2)%a02.ne.2) write(6,*) "NG"
 if (str(2)%a03.ne.3) write(6,*) "NG"
 if (str(2)%a04.ne.4) write(6,*) "NG"
else 
print *,'no alloc'
end if
end

module  mod02
type ty01
 integer    :: a01 =1
 integer    :: a02 =2
 integer    :: a03 =3
 integer    :: a04 =4
end type
type (ty01),allocatable,dimension(:) ::str
integer ierr
contains
subroutine mod02_sub()
111 allocate(str(2),stat=ierr)
end subroutine
end
subroutine test02()
use mod02
call mod02_sub()
if (ierr.eq.0) then
 if (str(1)%a01.ne.1) write(6,*) "NG"
 if (str(1)%a02.ne.2) write(6,*) "NG"
 if (str(1)%a03.ne.3) write(6,*) "NG"
 if (str(1)%a04.ne.4) write(6,*) "NG"
 if (str(2)%a01.ne.1) write(6,*) "NG"
 if (str(2)%a02.ne.2) write(6,*) "NG"
 if (str(2)%a03.ne.3) write(6,*) "NG"
 if (str(2)%a04.ne.4) write(6,*) "NG"
else
 print *,'not allocate '
end if
end

module  mod03
type ty01
 integer    :: a01 =1
 integer    :: a02 =2
 integer    :: a03 =3
 integer    :: a04 =4
end type
end

subroutine test03()
use mod03
type (ty01),allocatable,dimension(:) ::str
10 continue 
allocate(str(2),stat=ierr)
if (ierr.eq.0) then
 if (str(1)%a01.ne.1) write(6,*) "NG"
 if (str(1)%a02.ne.2) write(6,*) "NG"
 if (str(1)%a03.ne.3) write(6,*) "NG"
 if (str(1)%a04.ne.4) write(6,*) "NG"
 if (str(2)%a01.ne.1) write(6,*) "NG"
 if (str(2)%a02.ne.2) write(6,*) "NG"
 if (str(2)%a03.ne.3) write(6,*) "NG"
 if (str(2)%a04.ne.4) write(6,*) "NG"
else 
 goto 10
end if
end

module  mod04
type ty01
 integer    :: a01 =1
 integer    :: a02 =2
 integer    :: a03 =3
 integer    :: a04 =4
end type
type (ty01),allocatable,dimension(:) ::str1
integer ierr
contains
subroutine mod02_sub()
type (ty01),allocatable,dimension(:) ::str
allocate(str(2),stat=ierr)
if (ierr.eq.0) then
 if (str(1)%a01.ne.1) write(6,*) "NG"
 if (str(1)%a02.ne.2) write(6,*) "NG"
 if (str(1)%a03.ne.3) write(6,*) "NG"
 if (str(1)%a04.ne.4) write(6,*) "NG"
 if (str(2)%a01.ne.1) write(6,*) "NG"
 if (str(2)%a02.ne.2) write(6,*) "NG"
 if (str(2)%a03.ne.3) write(6,*) "NG"
 if (str(2)%a04.ne.4) write(6,*) "NG"
end if
allocate(str1(2),stat=ierr)
if (ierr.eq.0) then
 if (str1(1)%a01.ne.1) write(6,*) "NG"
 if (str1(1)%a02.ne.2) write(6,*) "NG"
 if (str1(1)%a03.ne.3) write(6,*) "NG"
 if (str1(1)%a04.ne.4) write(6,*) "NG"
 if (str1(2)%a01.ne.1) write(6,*) "NG"
 if (str1(2)%a02.ne.2) write(6,*) "NG"
 if (str1(2)%a03.ne.3) write(6,*) "NG"
 if (str1(2)%a04.ne.4) write(6,*) "NG"
end if
end subroutine
end
subroutine test04()
use mod04
call mod02_sub()
if (ierr.eq.0) then
 if (str1(1)%a01.ne.1) write(6,*) "NG"
 if (str1(1)%a02.ne.2) write(6,*) "NG"
 if (str1(1)%a03.ne.3) write(6,*) "NG"
 if (str1(1)%a04.ne.4) write(6,*) "NG"
 if (str1(2)%a01.ne.1) write(6,*) "NG"
 if (str1(2)%a02.ne.2) write(6,*) "NG"
 if (str1(2)%a03.ne.3) write(6,*) "NG"
 if (str1(2)%a04.ne.4) write(6,*) "NG"
else
 print *,'not allocate '
end if
end
