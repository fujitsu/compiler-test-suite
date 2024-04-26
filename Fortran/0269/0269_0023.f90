         call sub()
         contains
         subroutine sub()
         integer,parameter :: ii(2) = [1,2]
         integer,parameter :: jj(5) = [2,2,2,2,2]
         integer :: crr(6) = [([(ii+jj,integer(kind=4)::jj=5,6)],jj(ii),integer(kind=4)::ii=1,6,4)]
         if(any(crr /= [6,7,2,10,11,2]))print*,101
         if(any(ii /=[1,2]))print*,102
         print*,"PASS"
         end subroutine
        end

