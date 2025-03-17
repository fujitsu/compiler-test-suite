
program test
  !$omp parallel
  !$omp do collapse(3) lastprivate(jlast, klast, ilast)
  do k = 1,2
     do j = 1,3
        do i = -10,0
           ilast = i
           jlast = j
           klast = k
        end do
     enddo
  enddo
  !$omp end do
  !$omp single
  print *, klast, jlast, ilast
  !$omp end single
  !$omp end parallel
end program test
