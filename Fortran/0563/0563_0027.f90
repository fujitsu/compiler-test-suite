PROGRAM MAIN
IMPLICIT NONE

type,abstract :: ty
 character ,pointer :: ii(:)
end type

type,extends(ty) :: ty1
character  :: jj(2)
end type

integer b
class(ty),allocatable :: obj1(:),obj2(:)
type(ty1) :: obj3(2)
obj3(1)%jj='m'
obj3(2)%jj='n'
allocate(obj3(1)%ii(3),obj3(2)%ii(5))

obj3(1)%ii='o'
obj3(2)%ii='p'

allocate(obj1,obj2,source=obj3,stat=b)
select type(obj1)
type is (ty1)
if(any(obj1(1)%jj.ne.'m'))print*,101
if(any(obj1(2)%jj.ne.'n'))print*,102
if(any(obj1(1)%ii.ne.'o'))print*,103
if(any(obj1(2)%ii.ne.'p'))print*,104
if(lbound(obj1,1).ne.1)print*,105
if(ubound(obj1,1).ne.2)print*,106
if(lbound(obj1(1)%jj,1).ne.1)print*,107
if(ubound(obj1(1)%jj,1).ne.2)print*,108
if(lbound(obj1(2)%jj,1).ne.1)print*,109
if(ubound(obj1(2)%jj,1).ne.2)print*,110
if(lbound(obj1(1)%ii,1).ne.1)print*,111
if(ubound(obj1(1)%ii,1).ne.3)print*,112
if(lbound(obj1(2)%ii,1).ne.1)print*,113
if(ubound(obj1(2)%ii,1).ne.5)print*,114
end select

select type(obj2)
type is (ty1)
if(any(obj2(1)%jj.ne.'m'))print*,201
if(any(obj2(2)%jj.ne.'n'))print*,202
if(any(obj2(1)%ii.ne.'o'))print*,203
if(any(obj2(2)%ii.ne.'p'))print*,204
if(lbound(obj2,1).ne.1)print*,205
if(ubound(obj2,1).ne.2)print*,206
if(lbound(obj2(1)%jj,1).ne.1)print*,207
if(ubound(obj2(1)%jj,1).ne.2)print*,208
if(lbound(obj2(2)%jj,1).ne.1)print*,209
if(ubound(obj2(2)%jj,1).ne.2)print*,210
if(lbound(obj2(1)%ii,1).ne.1)print*,211
if(ubound(obj2(1)%ii,1).ne.3)print*,212
if(lbound(obj2(2)%ii,1).ne.1)print*,213
if(ubound(obj2(2)%ii,1).ne.5)print*,214
end select

if(b.ne.0)print*,301
  print*,'pass'
END PROGRAM
