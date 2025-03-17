module mod
contains
function jfun(ii)
jfun=ii
end function
end

call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
print *,"pass"
end

subroutine test01()
use mod
integer arr(10)
do i=1,10
 arr(i)=ifun(i)
 arr(i)=kfun(i)
 arr(i)=jfun(i)
end do
if (all(arr.ne.(/(i,i=1,10)/))) write(6,*) "NG"
contains
function ifun(ii)
ifun=ii
end function
end

subroutine test02()
use mod
integer arr(10)
do i=1,10
 arr(i)=kfun(i)
 arr(i)=jfun(i)
end do
if (all(arr.ne.(/(i,i=1,10)/))) write(6,*) "NG"
contains
function ifun(ii)
ifun=ii
end function
end

subroutine test03()
use mod
integer arr(10)
do i=1,10
 arr(i)=ifun(i)
 arr(i)=jfun(i)
end do
if (all(arr.ne.(/(i,i=1,10)/))) write(6,*) "NG"
contains
function ifun(ii)
ifun=ii
end function
end

subroutine test04()
use mod
integer arr(10)
do i=1,10
 arr(i)=ifun(i)
 arr(i)=kfun(i)
end do
if (all(arr.ne.(/(i,i=1,10)/))) write(6,*) "NG"
contains
function ifun(ii)
ifun=ii
end function
end

subroutine test05()
use mod
integer arr(10)
do i=1,10
 arr(i)=ifun(i)
end do
if (all(arr.ne.(/(i,i=1,10)/))) write(6,*) "NG"
contains
function ifun(ii)
ifun=ii
end function
end

subroutine test06()
use mod
integer arr(10)
do i=1,10
 arr(i)=kfun(i)
end do
if (all(arr.ne.(/(i,i=1,10)/))) write(6,*) "NG"
contains
function ifun(ii)
ifun=ii
end function
end

subroutine test07()
use mod
integer arr(10)
do i=1,10
 arr(i)=jfun(i)
end do
if (all(arr.ne.(/(i,i=1,10)/))) write(6,*) "NG"
contains
function ifun(ii)
ifun=ii
end function
end

function kfun(ii)
kfun=ii
end function
