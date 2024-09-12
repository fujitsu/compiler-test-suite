module mod1
type ty
integer::i=2
contains
procedure,pass(dmy) :: prc1 => fun1
procedure,pass(dmy) :: prc2 => fun2
generic :: gnr=>prc1,prc2
end type
 
contains
function fun1(dmy,f)
class(ty) :: dmy
integer :: fun1
interface
function f()
 real::f
end function
end interface
fun1 = int(f())+dmy%i
end function

function fun2(dmy,f)
class(ty) :: dmy
integer :: fun2
interface
function f(k)
 integer::f,k
end function
end interface
fun2 = f(dmy%i)
end function

end module

program main
use mod1
interface
function df1()
 real::df1
end function

function df2(d)
 integer::df2,d
end function
end interface

type(ty) :: obj
obj%i=2
if(obj%gnr(df1) .NE. 5) print*,"101"
if(obj%gnr(df2) .NE. 2) print*,"102"
print*,"PASS"

end

function df1()
 real::df1
 df1=3.0
end function

function df2(d)
 integer::df2,d
 df2=d
end function
