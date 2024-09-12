module m1
  integer::k
  contains
  subroutine s(c)
   character(kind=4,len=ABS(k+2-2)),value:: c(:,:)
   if (len(c)/=3) print *,201
   if (size(c)/=4) print *,202
   if (c(1,1)/=4_'123') print *,203
   if (c(2,1)/=4_'456') print *,204
   if (c(1,2)/=4_'789') print *,205
   if (c(2,2)/=4_'040') print *,206
   
   c(1,1)='ABC'
   c(2,1)='CDE'
   c(1,2)='FGH'
   c(2,2)='IJK'
   end subroutine
   end
    
  
subroutine s1   
use m1
 character(kind=4,len=3):: cc(2,2)

 k = 3
 cc(1,1)='123'
 cc(2,1)='456'
 cc(1,2)='789'
 cc(2,2)='040'
 
 call s(cc)
 if (cc(1,1)/=4_'123') print *,101
 if (cc(2,1)/=4_'456') print *,102
 if (cc(1,2)/=4_'789') print *,103
 if (cc(2,2)/=4_'040') print *,104
 end
      
call s1
print *,'PASS'
end
   

