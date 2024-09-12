type ty
  integer :: ii =12
end type

type ,extends(ty) :: ty1
   integer ::jj = 10
end type

type(ty1), target:: tardrive   
  
class(ty1),pointer::ptrdrive=>NULL()
class(ty1),pointer::ptrdrive2
class(ty1),pointer::ptrdrive3
class(ty),pointer::ptrbase =>tardrive

ptrdrive3=>NULL()
data ptrdrive2 /NULL()/
if(associated(ptrdrive3).neqv..false.)print*,"101"
if(associated(ptrdrive).neqv..false.)print*,"102"
if(associated(ptrdrive2).neqv..false.)print*,"103"
if(tardrive%ii.ne.12)print*,"104"
SELECT type(ptrbase)
    TYPE IS (ty)
    PRINT *, "FAIL"
    TYPE IS (ty1)
    PRINT *, "PASS"
  END SELECT

print*,"pass"
end

