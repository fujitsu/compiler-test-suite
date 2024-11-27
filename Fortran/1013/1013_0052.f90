        block data
        common/com/n,i
!$omp threadprivate(/com/)
        data i/101/
        end

        common/com/n,i
!$omp threadprivate(/com/)
!$omp parallel do 
        do j=1,100
          if (i.ne.101) stop "NG"
        end do
        print *,"PASS", i
        end
