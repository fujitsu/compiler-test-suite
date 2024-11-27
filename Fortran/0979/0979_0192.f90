call test01()
call test02()
call test03()
call test04()
call atest01()
call atest02()
call atest11()
call atest12()
call atest21()
call atest22()
call atest31()
call atest32()
call ctest01()
call ctest02()
call ctest11()
call ctest12()
call ctest21()
call ctest22()
call ctest31()
call ctest32()

print *,"pass"
end

subroutine atest11()
integer*2 :: ccc
ccc=2
call sub(ccc)
contains
subroutine sub(i)
value :: i
integer*2 i
if (i.ne.2) write(6,*) "NG"
end subroutine
end

subroutine atest12()
integer*2 :: ccc
ccc=3
iii =sub(ccc)
contains
function   sub(i)
value :: i
integer*2 i
if (i.ne.3) write(6,*) "NG"
sub=1
end function  
end

subroutine atest21()
integer*4 :: ccc
ccc=2
call sub(ccc)
contains
subroutine sub(i)
value :: i
integer*4 i
if (i.ne.2) write(6,*) "NG"
end subroutine
end

subroutine atest22()
integer*4 :: ccc
ccc=3
iii =sub(ccc)
contains
function   sub(i)
value :: i
integer*4 i
if (i.ne.3) write(6,*) "NG"
sub=1
end function  
end

subroutine atest31()
integer*8 :: ccc
ccc=2
call sub(ccc)
contains
subroutine sub(i)
value :: i
integer*8 i
if (i.ne.2) write(6,*) "NG"
end subroutine
end

subroutine atest32()
integer*8 :: ccc
ccc=3
iii =sub(ccc)
contains
function   sub(i)
value :: i
integer*8 i
if (i.ne.3) write(6,*) "NG"
sub=1
end function  
end

subroutine atest01()
integer*1 :: ccc
ccc=2
call sub(ccc)
contains
subroutine sub(i)
value :: i
integer*1 i
if (i.ne.2) write(6,*) "NG"
end subroutine
end

subroutine atest02()
integer*1 :: ccc
ccc=3
iii =sub(ccc)
contains
function   sub(i)
value :: i
integer*1 i
if (i.ne.3) write(6,*) "NG"
sub=1
end function  
end


subroutine test01()
character :: ccc
ccc="a"
call sub(ccc)
contains
subroutine sub(i)
value :: i
character i
if (i.ne."a") write(6,*) "NG"
end subroutine
end

subroutine test02()
character :: ccc
ccc="a"
iii =sub(ccc)
contains
function   sub(i)
value :: i
character i
if (i.ne."a") write(6,*) "NG"
sub=1
end function  
end

subroutine test03()
character*4 :: ccc
ccc="a"
call sub(ccc,1)
contains
subroutine sub(i,p)
integer :: p
value :: i
character*(kind(p)) i
if (i.ne."a") write(6,*) "NG"
end subroutine
end

subroutine test04()
character*4 :: ccc
ccc="a"
iii =sub(ccc,1)
contains
function   sub(i,p)
integer :: p
value :: i
character*(kind(p)) i
if (i.ne."a") write(6,*) "NG"
sub=1
end function  
end

subroutine ctest01()
logical*1 :: ccc
ccc=.false.
call sub(ccc)
contains
subroutine sub(i)
value :: i
logical*1 i
if (i.neqv..false.) write(6,*) "NG"
end subroutine
end

subroutine ctest02()
logical*1 :: ccc
ccc=.false. 
iii =sub(ccc)
contains
function   sub(i)
value :: i
logical*1 i
if (i.neqv..false.) write(6,*) "NG"
sub=1
end function
end

subroutine ctest11()
logical*2 :: ccc
ccc=.false.
call sub(ccc)
contains
subroutine sub(i)
value :: i
logical*2 i
if (i.neqv..false.) write(6,*) "NG"
end subroutine
end

subroutine ctest12()
logical*2 :: ccc
ccc=.false. 
iii =sub(ccc)
contains
function   sub(i)
value :: i
logical*2 i
if (i.neqv..false.) write(6,*) "NG"
sub=1
end function
end

subroutine ctest21()
logical*4 :: ccc
ccc=.false.
call sub(ccc)
contains
subroutine sub(i)
value :: i
logical*4 i
if (i.neqv..false.) write(6,*) "NG"
end subroutine
end

subroutine ctest22()
logical*4 :: ccc
ccc=.false. 
iii =sub(ccc)
contains
function   sub(i)
value :: i
logical*4 i
if (i.neqv..false.) write(6,*) "NG"
sub=1
end function
end

subroutine ctest31()
logical*8 :: ccc
ccc=.false.
call sub(ccc)
contains
subroutine sub(i)
value :: i
logical*8 i
if (i.neqv..false.) write(6,*) "NG"
end subroutine
end

subroutine ctest32()
logical*8 :: ccc
ccc=.false. 
iii =sub(ccc)
contains
function   sub(i)
value :: i
logical*8 i
if (i.neqv..false.) write(6,*) "NG"
sub=1
end function
end

