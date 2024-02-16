 module mod
  contains

   subroutine sub
     integer,save:: i
     print *,i
     i=i+1
   end subroutine

 end

 use mod
 call sub
 call sub
 print *,'PASS'
 end
