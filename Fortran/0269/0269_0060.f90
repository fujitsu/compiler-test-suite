         call sub()
         contains
         subroutine sub()
         integer,parameter :: ii(2) = [1,2]
         integer,parameter :: jj = 2
         integer :: crr(6),brr(6) 
         do concurrent (integer::jj=1:3)
          crr= [([(ii+jj,integer(kind=4)::jj=5,6)],jj,integer(kind=4)::ii=1,6,4)]
         end do
         forall (integer::jj=1:3)
          brr= [([(ii+jj,integer(kind=4)::jj=5,6)],jj,integer(kind=4)::ii=1,6,4)]
         end forall
         if(any(crr /= [6,7,3,10,11,3]))print*,101,crr
         if(any(brr /= [6,7,3,10,11,3]))print*,105,brr
         if(any(ii /=[1,jj]))print*,102
         print*,"PASS"
         end subroutine
        end

