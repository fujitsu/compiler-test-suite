recursive function iyy() result(iz)
   iz=2
   return
entry ixx()
 iz=kxx(iyy)
end
k=ixx()
if (k/=2)print *,'error'
print *,'pass'
end
   function  kxx(ii)
     kxx=ii()
   end function 
