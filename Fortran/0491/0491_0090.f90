 module m
   integer::n=2
   private
   interface
     character(1+n+1) module function sub()
     end
   end interface
 end module m

 use m
print *,'pass'
 end
