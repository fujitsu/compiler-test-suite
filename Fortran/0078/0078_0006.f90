module m1
integer,parameter::k=2
contains
subroutine s(r2,r,n)
 real(k) :: r2(..)
 real(k) :: r(:,:,:)
         if(size(r2) .ne. 24) print*,"121"
         if(size(r,dim=n) .ne. 4) print*,"122"
         if(sizeof(r) .ne. 48) print*,"123"
end subroutine
end
use m1
 real(k) :: r2(2,3,4)
call s(r2,r2,3)
         print*,"pass"
         end
