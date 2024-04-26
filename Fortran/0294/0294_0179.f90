module mod
  type :: str01
  character(:),pointer,dimension(:,:,:)::cha01
  end type
  type :: str02
  character(:),pointer,dimension(:,:,:)::cha02
  end type
end module

subroutine sub01 (arg01,arg02)
  use mod
  type(str01) :: arg01
  type(str02) :: arg02
  arg01%cha01=reshape((/"12345","23451","34567","45678","56789","67890","78901", "89012", &
                  "A2345","A3451","A4567","A5678","A6789","A7890","A8901", "A9012", &
                  "B2345","B3451","B4567","B5678","B6789","B7890","B8901", "B9012", &
                  "C2345","C3451","C4567"/),[3,3,3])
  arg02%cha02=>arg01%cha01
  if (arg01%cha01(-2,3,-5)/="12345")print *,arg01%cha01(-2,3,-5)
  if (arg01%cha01( 0,5,-3)/="C4567")print *,arg01%cha01(0,5,-3)
  if (any(lbound(arg01%cha01)/=[-2,3,-5]))print *,lbound(arg01%cha01)
  if (any(ubound(arg01%cha01)/=[0,5,-3]))print *,ubound(arg01%cha01)
  arg01%cha01(lbound(arg01%cha01,dim=1):,lbound(arg01%cha01,dim=2):,lbound(arg01%cha01,dim=3):)=>arg01%cha01(:,:,:)
  if (any(lbound(arg01%cha01)/=[-2,3,-5]))print *,lbound(arg01%cha01)
  if (any(ubound(arg01%cha01)/=[0,5,-3]))print *,ubound(arg01%cha01)
  if (arg01%cha01(-2,3,-5)/="12345")print *,arg01%cha01(-2,3,-5)
  if (arg01%cha01( 0,5,-3)/="C4567")print *,arg01%cha01(0,5,-3)
  arg02%cha02(lbound(arg02%cha02,dim=1):lbound(arg02%cha02,dim=1)+1,ubound(arg02%cha02,dim=2):ubound(arg02%cha02,dim=2)+1,lbound(arg02%cha02,dim=3):lbound(arg02%cha02,dim=3)+1)=>arg02%cha02(:,3,-5)
  if (any(lbound(arg02%cha02)/=[-2,5,-5]))print *,lbound(arg02%cha02)
  if (any(ubound(arg02%cha02)/=[-1,6,-4]))print *,ubound(arg02%cha02)
  if (arg02%cha02(-2,5,-5)/="12345")print *,arg02%cha02(-2,5,-5)
  if (arg02%cha02(-1,6,-4)/="89012")print *,arg02%cha02(-1,6,-4)
end

use mod
interface
subroutine sub01(arg01,arg02) 
  use mod
  type(str01) :: arg01
  type(str02) :: arg02
end subroutine
end interface

type(str01) :: arg01
type(str02) :: arg02
allocate(character(5)::arg01%cha01(-2:0,3:5,-5:-3))
call sub01(arg01,arg02)
print *,'ok'
end
