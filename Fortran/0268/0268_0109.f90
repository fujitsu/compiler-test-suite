type ty
  integer :: ii =12
end type

type ,extends(ty) :: ty1
   integer ::jj = 10
end type

type ,extends(ty1) :: ty2
   integer ::kk = 10
end type

type(ty),target:: tarbase   
type(ty1),target:: tardrive1   
type(ty2),target:: tardrive2   

class(ty2),pointer::ptrdrive=>tardrive2
class(ty1),pointer::ptrdrive2
class(ty1),pointer::ptrdrive3=>tardrive2
class(ty),pointer::ptrdrive4=>tarbase
class(ty),pointer::ptrdrive5
class(ty1),pointer::ptrdrive6=>tardrive2
class(ty),pointer::ptrdrive7=>tardrive1
class(ty),pointer::ptrdrive8=>tardrive2
class(ty),pointer::ptrdrive9
class(ty),pointer::ptrdrive10

data ptrdrive2 /tardrive2/

data ptrdrive5 /tarbase/

data ptrdrive9 /tardrive1/
data ptrdrive10 /tardrive2/
if(associated(ptrdrive3).neqv..true.)print*,"101"
if(associated(ptrdrive).neqv..true.)print*,"102"
if(associated(ptrdrive2).neqv..true.)print*,"103"
if(associated(ptrdrive4).neqv..true.)print*,"104"
if(associated(ptrdrive5).neqv..true.)print*,"105"
if(associated(ptrdrive6).neqv..true.)print*,"106"
if(associated(ptrdrive7).neqv..true.)print*,"107"
if(associated(ptrdrive8).neqv..true.)print*,"108"
if(associated(ptrdrive9).neqv..true.)print*,"109"
if(associated(ptrdrive10).neqv..true.)print*,"110"
if(tarbase%ii.ne.12)print*,"104"
if(ptrdrive2%jj.ne.10)print*,"111"
if(ptrdrive6%jj.ne.10)print*,"112"
if(ptrdrive6%ii.ne.12)print*,"113"
if(ptrdrive%kk.ne.10)print*,"114"

SELECT type(ptrdrive7)
    TYPE IS (ty)
    PRINT *, "FAIL"
    TYPE IS (ty1)
  END SELECT

print*,"PASS"
end
