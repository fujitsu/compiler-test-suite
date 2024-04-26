integer,parameter::n=3

integer(4),dimension(n,n)::af, bf, pf
af=1;bf=1;pf=0

!$omp parallel workshare
  pf = matmul(af,bf)
!$omp end parallel workshare
print *,pf

end
