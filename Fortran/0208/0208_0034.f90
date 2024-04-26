module m1
integer,parameter::n=4
integer,parameter::k=8
contains
   subroutine s1(rr2,rr2_4)
         complex(kind=n)::c2
         real   (kind=n)::r2
         real   (kind=n),optional::rr2
        
        real   (kind=k) ::r2_4
        real   (kind=k),optional ::rr2_4
        
r2=0
        c2= cmplx(r2 , rr2 )
        c2= cmplx(r2 , rr2 ,kind=n)
        c2= cmplx(r2 , rr2_4 ,kind=n)
        c2= cmplx(r2 , rr2 ,kind=k)
        c2= cmplx(r2 , rr2_4 ,kind=k)
       
       end
end
use m1
call s1
print *,'pass'
end
