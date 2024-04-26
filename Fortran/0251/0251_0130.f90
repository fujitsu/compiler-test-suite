block
interface gnr
function ff()
integer :: ff
end function
end interface


interface
function fun(d)
integer :: d,fun
end function
end interface

intrinsic::int

procedure(dim) :: dprc

procedure(fun) :: dfun2

external :: aimag

if(int(dprc(3.2,4.3))/=9) print*,101
if(dfun2(2)/=5) print*,102
if(aimag((2.3,4.3))/=1) print*,103
if(int(2.45)/=2) print*,104
if(fun(2)/=3) print*,105
if(gnr()/=3) print*,107
end block

block
external :: int
if(int(2.45)/=24) print*,106
end block

if(int(2.45)==2) print*,"pass"
end

function ff()
integer :: ff
ff=3
end function


function fun(d)
integer :: d,fun
fun=d+1
end function

real function dprc(d,d2)
real :: d,d2
dprc=d+d2+2
end function

function dfun2(d)
integer :: d,dfun2
dfun2=d+1+d
end function

function aimag(cc)
complex :: cc
real :: aimag
if(cc/=(0.0,0.0)) aimag=1.0
end function

function int(dd)
real :: dd
integer :: int
int=dd+22
end function
