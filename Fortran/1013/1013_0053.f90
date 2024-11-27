        module mod
        allocatable  i(:)
!$omp threadprivate(i)
        contains 
          subroutine init
!$omp parallel
          allocate(i(1))
          i = 101
!$omp end parallel
          endsubroutine init
        end

        use mod
        call init
!$omp parallel do 
        do j=1,100
          if (i(1).ne.101) stop "NG"
        end do
        print *,"PASS", i
        end
