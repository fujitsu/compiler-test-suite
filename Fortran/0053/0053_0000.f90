         call ss1
print *,'OK'
          end
          subroutine ss1
         integer,parameter::iii=1
         associate(ppp=>iii)
         !$omp do  schedule(static,iii)
         do i=1,1
         end do
         !$omp end do
        
        !$omp do schedule(static,ppp)
        do j=1,1
         end do
         !$omp end do
         end associate
         end

