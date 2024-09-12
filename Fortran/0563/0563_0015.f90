PROGRAM MAIN
IMPLICIT NONE
integer :: ii
integer :: kk,ll
type ty
 integer :: jj
end type 

type(ty) :: obj(2,3)
class(*), pointer   :: ch1(:,:),ch2(:,:)
ii=2
kk=3
ll=3
obj%jj=5
allocate(ch1,ch2,source=obj,stat=ii)
select type(ch1)
type is(ty)
  kk=ch1(1,1)%jj
  if(lbound(ch1,1).ne.1)print*,104
  if(ubound(ch1,1).ne.2)print*,105
  if(lbound(ch1,2).ne.1)print*,106
  if(ubound(ch1,2).ne.3)print*,107
  if(size(ch1).ne.6)print*,108
end select
select type(ch2)
type is(ty)
  ll=ch2(1,1)%jj
  if(lbound(ch2,1).ne.1)print*,109
  if(ubound(ch2,1).ne.2)print*,110
  if(lbound(ch2,2).ne.1)print*,111
  if(ubound(ch2,2).ne.3)print*,112
  if(size(ch2).ne.6)print*,113
end select
if(ii.ne.0)print*,101
if(kk.ne.5)print*,102
if(ll.ne.5)print*,103
 print *,'pass'
END PROGRAM
