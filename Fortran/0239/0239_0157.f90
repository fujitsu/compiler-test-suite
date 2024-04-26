module m1
interface acos
   module procedure cacos,wacos
end interface
contains
  function wacos(c) result(r)
   real:: c,r
   r=c+1
  end function
  function cacos(c) result(r)
   complex:: c,r
   r=c+(1.1)
  end function
end
subroutine s1
use m1
if (abs(acos(0.1)-1.1)>0.0001) print *,101
if (abs(acos(0.1_8)-1.470628905633337_8)>0.000000001) print *,102
if (abs(acos(0.1_16)-1.4706289056333368228857985121870580_16)>0.0000000000000001) print *,103
if (abs(acos((0.1,0.1))-(1.2,.1))>0.0001) print *,104
if (abs(acos((0.1_8,0.1_8))- (1.471132623935101_8,-0.1003302981122050_8))>0.0001) print *,105
if (abs(acos((0.1_16,0.1_16))- (1.4711326239351014592048516937363555_16,-0.10033029811220500593917930006724726_16))>0.0001) print *,106
end
call s1
print *,'pass'
end
  
