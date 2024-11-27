module mod
 contains
 function ifun(i,j) result(iii)
 integer iii
 integer,intent(in) :: j
 integer(kind=8),intent(in) :: i
 iii=i+j
 end function
 function jfun(i,j) result(jjj)
 integer iii
 integer,intent(in) :: j
 integer(kind=4),intent(in) :: i
 pointer :: i,j
 jjj=i+j+100
 end function
 function jfun1(i,j) result(jjj)
 integer iii
 integer,intent(in) :: j
 integer(kind=2),intent(in) :: i
 pointer :: i
 jjj=i+j+1000
 end function
 function jfun2(i,j) result(jjj)
 integer iii
 integer,intent(in) :: j
 integer(kind=1),intent(in) :: i
 pointer :: j
 jjj=i+j+10000
 end function
end

call test01()
call test02()
call test03()
call test04()
print *,"pass"
end

subroutine test01()
use mod
interface operator(.aaa.)
 module procedure ifun,jfun,jfun1,jfun2
end interface
integer :: ii,jj
integer,pointer :: ip,jp
allocate(ip,jp)
ii=1
jj=2
ip=5
jp=3
call s1()
call s2()
call s3()
call s4()
contains
subroutine s1()
integer(kind=8) :: i8
i8=ii
ians = i8.aaa.jj
if (ians.ne.3) write(6,*) "NG"
end subroutine
subroutine s2()
integer(kind=4),pointer :: i4
i4=>ip
ians = i4.aaa.jp
if (ians.ne.108) write(6,*) "NG"
end subroutine
subroutine s3()
integer(kind=2),pointer :: i2
integer(kind=2),pointer :: ipp
allocate(ipp)
ipp=ip
i2=>ipp
ians = i2.aaa.jj
if (ians.ne.1007) write(6,*) "NG"
end subroutine
subroutine s4()
integer(kind=1) :: i1
i1=ii
ians = i1.aaa.jp
if (ians.ne.10004) write(6,*) "NG"
end subroutine
end subroutine

subroutine test02()
use mod
interface operator(.aaa.)
 module procedure jfun,jfun1,jfun2,ifun
end interface
integer :: ii,jj
integer,pointer :: ip,jp
allocate(ip,jp)
ii=1
jj=2
ip=5
jp=3
call s1()
call s2()
call s3()
call s4()
contains
subroutine s1()
integer(kind=8) :: i8
i8=ii
ians = i8.aaa.jj
if (ians.ne.3) write(6,*) "NG"
end subroutine
subroutine s2()
integer(kind=4),pointer :: i4
i4=>ip
ians = i4.aaa.jp
if (ians.ne.108) write(6,*) "NG"
end subroutine
subroutine s3()
integer(kind=2),pointer :: i2
integer(kind=2),pointer :: ipp
allocate(ipp)
ipp=ip
i2=>ipp
ians = i2.aaa.jj
if (ians.ne.1007) write(6,*) "NG"
end subroutine
subroutine s4()
integer(kind=1) :: i1
i1=ii
ians = i1.aaa.jp
if (ians.ne.10004) write(6,*) "NG"
end subroutine
end subroutine

subroutine test03()
use mod
interface operator(.aaa.)
 module procedure jfun,jfun1,ifun,jfun2
end interface
integer :: ii,jj
integer,pointer :: ip,jp
allocate(ip,jp)
ii=1
jj=2
ip=5
jp=3
call s1()
call s2()
call s3()
call s4()
contains
subroutine s1()
integer(kind=8) :: i8
i8=ii
ians = i8.aaa.jj
if (ians.ne.3) write(6,*) "NG"
end subroutine
subroutine s2()
integer(kind=4),pointer :: i4
i4=>ip
ians = i4.aaa.jp
if (ians.ne.108) write(6,*) "NG"
end subroutine
subroutine s3()
integer(kind=2),pointer :: i2
integer(kind=2),pointer :: ipp
allocate(ipp)
ipp=ip
i2=>ipp
ians = i2.aaa.jj
if (ians.ne.1007) write(6,*) "NG"
end subroutine
subroutine s4()
integer(kind=1) :: i1
i1=ii
ians = i1.aaa.jp
if (ians.ne.10004) write(6,*) "NG"
end subroutine
end subroutine

subroutine test04()
use mod
interface operator(.aaa.)
 module procedure jfun2,jfun1,jfun,ifun
end interface
integer :: ii,jj
integer,pointer :: ip,jp
allocate(ip,jp)
ii=1
jj=2
ip=5
jp=3
call s1()
call s2()
call s3()
call s4()
contains
subroutine s1()
integer(kind=8) :: i8
i8=ii
ians = i8.aaa.jj
if (ians.ne.3) write(6,*) "NG"
end subroutine
subroutine s2()
integer(kind=4),pointer :: i4
i4=>ip
ians = i4.aaa.jp
if (ians.ne.108) write(6,*) "NG"
end subroutine
subroutine s3()
integer(kind=2),pointer :: i2
integer(kind=2),pointer :: ipp
allocate(ipp)
ipp=ip
i2=>ipp
ians = i2.aaa.jj
if (ians.ne.1007) write(6,*) "NG"
end subroutine
subroutine s4()
integer(kind=1) :: i1
i1=ii
ians = i1.aaa.jp
if (ians.ne.10004) write(6,*) "NG"
end subroutine
end subroutine

