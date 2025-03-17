      program main
        integer b
        real*8 a
        real,parameter :: m = 3.00
        integer ord(101)

        call omp_set_dynamic(.false.)
        call omp_set_max_active_levels(.true.)
!$omp parallel private(ord, a, b, k)
!$omp do ordered schedule(static,1)
        do i = 1, 100
          a = i / m
          b = a
          if(a .eq. b) then
      !$omp ordered
            ord = 0
          !$omp parallel
            !$omp do ordered
              do j = 1, 100
              !$omp ordered
                ord(j) = j
              !$omp end ordered
              enddo
            !$omp end do
          !$omp end parallel

          do k = 1, 100
            if(ord(k) .ne. k) then
              print *, "NG k=",k,ord(k)
              call exit
            endif
          enddo
      !$omp end ordered
          endif
        enddo
!$omp end do
!$omp end parallel
print *, "OK"
end
