      call s1
      print *,'pass'
      end
      subroutine s1
implicit none
integer :: RealKind, &
           NewRealKind, &
           IntegerKind, &
           NewintegerKind, &
           range
range =1
RealKind =Selected_Real_Kind(5,range)
write(1,*)'Real kind value= ',RealKind

do while(RealKind.ge.0)
  range  =range+1
  Newrealkind =Selected_Real_kind(5,range)
  if (newRealkind.ne.realkind)then
     write(1 ,*)'Real kind value = ',NewRealKind
     Realkind =NewRealkind
  End if
End do
range=0
integerkind=selected_Int_kind(range)
write(1,*)'Integer kind value = ',Integerkind
do while(integerkind.ge.0)
   range = range+1
   NewintegerKind=selected_Int_Kind(range)
   if (NewIntegerkind.ne.IntegerKind)then
     write(1,*)'Integer kind value = ',NewIntegerKind
     IntegerKind=NewIntegerKind
   Endif
End do
end 
