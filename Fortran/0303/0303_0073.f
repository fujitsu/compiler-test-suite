         real,allocatable::i(:,:),j(:,:)
         real::c(2,2)
         allocate(i(2,2),j(2,2))
         i=2
         j=2
         !$omp parallel
         !$omp workshare
         c=matmul(matmul(i,j)+matmul(i,j),matmul(i,j)+matmul(i,j))
         !$omp endworkshare
         !$omp end parallel
         print *,c
         end
