        block data 
        implicit none
        integer n,i
        common/com/n,i
!$omp threadprivate(/com/)
        data i/101/
        end

        implicit none
        integer n,i
        common/com/n,i
!$omp threadprivate(/com/)
        i = i + 1
        call check
        print *,"PASS", i
        end

        subroutine check
        implicit none
        common/com/n,i
        integer n,i,j
!$    integer*4 OMP_GET_THREAD_NUM
!$omp threadprivate(/com/)
!$omp parallel do  private(j)
        do j=1,100
#ifdef _OPENMP
          if (OMP_GET_THREAD_NUM() .eq. 0) then
          if (i.ne.102) then
            print *,i, OMP_GET_THREAD_NUM()
            stop "NG"
          endif
          else
          if (i.ne.101) then
            print *,i, OMP_GET_THREAD_NUM()
            stop "NG"
          endif
          endif
#else
          if (i.ne.102) stop "NG"
#endif
        end do
        end 
