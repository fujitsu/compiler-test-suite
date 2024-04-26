type ty
integer :: aa(10,10) = 10
integer,pointer :: xx(:,:)
end type ty
type(ty),allocatable :: obj
allocate(obj)
obj%xx=>NULL()

call sub(obj%aa(1:10:2,1:10:2),obj%aa(1:10:2,1:10:2), obj%aa, obj%xx)
if(obj%aa(1,1).ne.20)print*,"108"
contains
subroutine sub(dmy,dmy2 ,dmy3,dmy4)

integer,intent(in),contiguous::dmy(:,:)
integer,intent(out),contiguous::dmy2(:,:)
integer,intent(out),contiguous::dmy3(:,:)
integer,optional,contiguous::dmy4(:,:)
if(loc(dmy).eq.loc(obj%aa))print*,"101"
if(loc(dmy2).eq.loc(obj%aa))print*,"102"
if(loc(dmy3).ne.loc(obj%aa))print*,"103"
if(is_contiguous(dmy) .NEQV. .TRUE.)print*,"104"
if(is_contiguous(dmy2) .NEQV. .TRUE.)print*,"105"
if(is_contiguous(dmy3) .NEQV. .TRUE.)print*,"106"

dmy2(1,1) =20
dmy3(1,1) =20
print*,"PASS"
      if (present(dmy4)) then
if(is_contiguous(dmy4) .NEQV. .TRUE.)print*,"104"
      endif
end subroutine sub
end
