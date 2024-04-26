  character(:),allocatable,target,dimension(:,:,:)::cha01
  character(:),pointer,dimension(:,:)::cha02
  allocate(cha01(3,3,3),source= &
      reshape((/"12345","23451","34567","45678","56789","67890","78901", "89012", &
               "A2345","A3451","A4567","A5678","A6789","A7890","A8901", "A9012", &
               "B2345","B3451","B4567","B5678","B6789","B7890","B8901", "B9012", &
               "C2345","C3451","C4567"/),[3,3,3]))

  cha02(-2:0,3:5)=>cha01

  if (any(lbound(cha02)/=[-2,3]))print *,lbound(cha02)
  if (any(ubound(cha02)/=[0,5]))print *,ubound(cha02)
  if (any(cha02/=cha01(1:3,1:3,1)))print *,cha02

  print *,'ok'
end
