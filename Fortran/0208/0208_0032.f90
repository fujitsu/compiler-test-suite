module m1
contains
   subroutine s1(rr2,rr2_4)
         complex(kind=2)::c2
         real   (kind=2)::r2
         real   (kind=2),optional::rr2
        
        real   (kind=4) ::r2_4
         real   (kind=4),optional ::rr2_4
        
r2=0
r2_4=0
         c2= cmplx(r2 , rr2 )
        c2= cmplx(r2 , rr2_4 ,kind=2)
        c2_4= cmplx(r2_4 , rr2 ,kind=4)
       
       end
end
use m1
call s1
print *,'pass'
end
