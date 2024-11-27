         integer(1)::i0,i1
         integer(1)::j1
         integer(8)::j0
         i1=127_1
         j1=127_1
         do i0=1,i1+1
         print *,i0
         end do
         print *,'end do s'
        
        do concurrent(j0=1:j1+1)
        print *,j0
        end do
        end
