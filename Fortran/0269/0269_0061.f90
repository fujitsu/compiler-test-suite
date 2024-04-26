         call sub()
         contains
         subroutine sub()
         integer,parameter :: ii(2) = [1,2]
         integer,parameter :: jj = 10
         integer :: crr(6),brr(6) 
         forall (integer::ii=1:3)
          forall (integer::jj=1:3)
          crr = [jj+1,jj+2,jj+3,jj+4,jj+5,jj+6]
          end forall       
          brr=crr
          crr = [jj+1,jj+2,jj+3,jj+4,jj+5,jj+6]
         end forall 
         if(any(brr /= [4,5,6,7,8,9]))print*,101
         if(any(crr /= [11,12,13,14,15,16]))print*,102
         if(any(ii /= [1,2]))print*,103 
         print*,"PASS"
         end subroutine
        end

