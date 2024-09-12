module pol
type ty
integer::t=10
contains
   procedure, nopass :: fun
end type

type,extends(ty)::ty1
character::t1='a'
end type

type(ty), target ::itrg1=ty(2)
type(ty), target ::itrg2=ty(50)

contains
        function fun(this,idtrg,idtrg1)
        type(ty)::this
        type(ty),pointer ::fun
        type(ty),target,optional :: idtrg
        type(ty),target,optional :: idtrg1
        this%t=1
        if(present(idtrg)) then
        fun=>idtrg
        else
        fun=>idtrg1
        end if
       end function
end module

use pol
type(ty)::obj
type(ty1)::obj1

obj1%t=20

if(itrg1%t /= 2)print*,101
if(itrg2%t /= 50)print*,102

obj%fun(obj,idtrg=itrg1) = ty(5)
if(obj%t /= 1)print*,103
if(itrg1%t /= 5)print*,104

obj1%fun(obj,idtrg1=itrg2) = ty(100)
if(itrg2%t /=100)print*,105, itrg2%t
if(obj1%t /=20)print*,106

print*,"Pass"
end
