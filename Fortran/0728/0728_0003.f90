call sub01()
call sub02()
call sub03()
print *,'pass'
end

subroutine sub01()
type ty0
  integer,pointer  :: qq
  type(ty1),pointer :: kk
  type(ty0),pointer :: iia,iiiia(:)
end type
type ty1
  integer,pointer  :: i
  integer,pointer  :: j(:)
  type(ty1),pointer :: k
  type(ty1),pointer :: l(:)
  type(ty0),pointer :: ia,ib(:)
end type
type(ty1),pointer :: sss
call sub(sss)
contains
subroutine sub(zzz)
type(ty1),pointer :: zzz
ivvv= kind(zzz%i)
end subroutine
end
subroutine sub02()
type ty0
  integer,pointer  :: qq
  type(ty1),pointer :: kk
  type(ty0),pointer :: iia,iiiia(:)
end type
type ty1
  integer,pointer  :: i
  integer,pointer  :: j(:)
  type(ty1),pointer :: k
  type(ty1),pointer :: l(:)
  type(ty0),pointer :: ia,ib(:)
end type
type(ty1),pointer :: sss(:)
call sub(sss)
contains
subroutine sub(zzz)
type(ty1),pointer :: zzz(:)
ivvv= kind(zzz(1)%i)
end subroutine
end

subroutine sub03()
type ty0
  integer,pointer  :: qq
  type(ty1),pointer :: kk
  type(ty0),pointer :: iia,iiiia(:)
end type
type ty1
  integer,pointer  :: i
  integer,pointer  :: j(:)
  type(ty1),pointer :: k
  type(ty1),pointer :: l(:)
  type(ty0),pointer :: ia,ib(:)
end type
type(ty1),pointer :: sss(:,:,:,:,:,:)
type(ty1)         :: sssa(2,2,2,2,2,2)
type(ty1),target  :: sssb(2,2,2,2,2,2)
call sub(sss,sssa,sssb)
contains
subroutine sub(zzz,zzza,zzzb)
type(ty1),pointer :: zzz(:,:,:,:,:,:)
type(ty1)         :: zzza(2,2,2,2,2,2)
type(ty1),target  :: zzzb(2,2,2,2,2,2)
ivvv= kind(zzz(1,1,1,1,1,1)%i)
ivvv= kind(zzza(1,1,1,1,1,1)%i)
ivvv= kind(zzzb(1,1,1,1,1,1)%i)
end subroutine
end
