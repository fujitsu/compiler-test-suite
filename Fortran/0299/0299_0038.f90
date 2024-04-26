integer,parameter::n=3
integer(4),dimension(:,:),allocatable:: af, bf, pf

allocate(af(n,n),bf(n,n),pf(n,n))
af=1;bf=1;pf=0

!$omp parallel workshare
  pf = matmul(af,bf)
!$omp end parallel workshare
print *,pf

deallocate(af,bf,pf)
end
