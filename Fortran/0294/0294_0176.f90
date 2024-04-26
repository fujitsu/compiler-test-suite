subroutine sub01 (arg01,arg02)
  integer,pointer,dimension(:,:,:)::arg01
  integer,pointer,dimension(:,:,:)::arg02
  arg01=reshape([(i,i=1,8*4*5)],[8,4,5])
  arg02=>arg01
  if (arg01(-2,3,-5)/=1)print *,'error-1'
  if (arg01( 5,6,-1)/=8*4*5)print *,'error-2'
  if (any(lbound(arg01)/=[-2,3,-5]))print *,lbound(arg01)
  arg01(lbound(arg01,dim=1):,lbound(arg01,dim=2):,lbound(arg01,dim=3):)=>arg01(:,:,:)
  if (any(lbound(arg01)/=[-2,3,-5]))print *,lbound(arg01)
  if (any(ubound(arg01)/=[5,6,-1]))print *,ubound(arg01)
  if (arg01(-2,3,-5)/=1)print *,arg01(-2,3,-5)
  if (arg01( 5,6,-1)/=8*4*5)print *,arg01(5,6,-1)
  arg02(lbound(arg02,dim=1):lbound(arg02,dim=1)+1,ubound(arg02,dim=2):ubound(arg02,dim=2)+1,lbound(arg02,dim=3):lbound(arg02,dim=3)+1)=>arg02(:,3,-5)
  if (any(lbound(arg02)/=[-2,6,-5]))print *,lbound(arg02)
  if (any(ubound(arg02)/=[-1,7,-4]))print *,ubound(arg02)
  if (arg02(-2,6,-5)/=1)print *,arg02(-2,6,-5)
  if (arg02(-1,7,-4)/=8)print *,arg02(-1,7,-4)
end
interface
subroutine sub01(arg01,arg02) 
  integer,pointer,dimension(:,:,:)::arg01
  integer,pointer,dimension(:,:,:)::arg02
end subroutine
end interface
integer,pointer,dimension(:,:,:)::arg01
integer,pointer,dimension(:,:,:)::arg02
allocate(arg01(-2:5,3:6,-5:-1))
allocate(arg02(-2:5,3:6,-5:-1))
call sub01(arg01,arg02)
print *,'ok'
end
