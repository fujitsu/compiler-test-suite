integer :: counter = 0
class(*),pointer :: ptr,ap
class(*),allocatable :: alc,alc2

type ty
 integer :: i=2
end type

type(ty) :: mobj
call ss(mobj)

block
type ty
 integer :: i = 4
end type

type(ty) :: bobj
call ss(bobj)
end block

block
type ty
 integer :: i = 6
end type

type(ty) :: bobj
call ss(bobj)

block
type ty
 integer :: i = 7
end type

type(ty),target :: bobj
ap=>bobj
call ss(ap)
select type(ap)
type is(ty)
 if(ap%i/=7) print*,501
end select
end block
end block

contains
subroutine ss(dd)
class(*) :: dd

counter = counter+1

if(counter .eq. 1) then
 allocate(alc,source=dd)
 allocate(ptr,source=alc)
 select type(ptr)
 type is(ty)
  print*,'pass1/3'
 class default
  print*,301
 end select

else if(counter .eq. 2) then
 deallocate(alc)
 allocate(alc,source=dd)
 if(associated(ptr)) then
  select type(ptr)
  type is(ty)
   if((same_type_as(ptr,dd) .eqv. .false.) .and.&
      (extends_type_of(ptr,dd) .eqv. .false.)) then
    if(ptr%i/=2) print*,103
    select type(alc)
    type is(ty)
     print*,302
    class default
     if(same_type_as(alc,ptr) .neqv. .false.) print*,104
     print*,'pass2/3'
    end select
   else
    print*,101
   endif
  end select
 end if

else
 if(same_type_as(alc,dd) .neqv. .false.) print*,105
 if(same_type_as(ptr,dd) .neqv. .false.) print*,106
 if(same_type_as(dd,dd) .neqv. .true.) print*,107
 if(allocated(alc2)) then
  print*,'pass3/3'
  if(same_type_as(alc2,dd) .neqv. .false.) print*,108
 else
  if(counter == 3) allocate(alc2,source=dd)
 endif
end if
end subroutine
end 
