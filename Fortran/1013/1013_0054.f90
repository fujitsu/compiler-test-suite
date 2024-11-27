        block data
        common/com/n,i
!$omp threadprivate(/com/)
        data i/101/
        end

        common/com/n,i
!$omp threadprivate(/com/)
        equivalence (i,k)
!$omp parallel do 
        do j=1,100
          if (k.ne.101) stop "NG"
        end do
        print *,"PASS", i
        end
