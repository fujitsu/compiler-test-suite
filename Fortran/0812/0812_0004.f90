   module m1
     implicit none
     real::v1
     pointer (ptr,v1)
      end
   module m2
       use m1
       implicit none
       real::v2
       pointer (ptr,v2)
   end
print *,'pass'
end
