character(5),allocatable,target,dimension(:,:,:)::cha01
type :: str
  character(5),pointer,dimension(:,:)::cha02
end type
type(str) :: sss
allocate(cha01(3,3,3),source= &
    reshape((/"12345","23451","34567","45678","56789","67890","78901", "89012", &
             "A2345","A3451","A4567","A5678","A6789","A7890","A8901", "A9012", &
             "B2345","B3451","B4567","B5678","B6789","B7890","B8901", "B9012", &
             "C2345","C3451","C4567"/),[3,3,3]))
  sss%cha02(-2:0,3:5)=>cha01(:,:,:)
  if (any(lbound(sss%cha02)/=[-2,3]))print *,lbound(sss%cha02)
  if (any(ubound(sss%cha02)/=[0,5]))print *,ubound(sss%cha02)
  if (any(sss%cha02/=cha01(1:3,1:3,1)))print *,sss%cha02
  print *,'ok'
end
