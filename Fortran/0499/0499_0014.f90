integer,parameter :: iii=0
           !$omp task priority(iii)
           do kaaaa=1,1
           end do
           !$omp end task
           !$omp task priority(iii+1)
           do kaaaa=1,1
           end do
           !$omp end task
kaaaa=1
           !$omp task priority(kaaaa+1)
           do kaaaa=1,1
           end do
           !$omp end task

print *,'pass'
         end program
