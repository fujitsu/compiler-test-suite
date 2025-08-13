       common /aa/ ia,ib
write(2, '(a,z16.16)') '1-ia=',loc(ia)
write(2, '(a,z16.16)') '1-ib=',loc(ib)
!$omp parallel private(/aa/)
write(2, '(a,z16.16)') '3-ia=',loc(ia)
write(2, '(a,z16.16)') '3-ib=',loc(ib)
!$omp end parallel
write(2, '(a,z16.16)') '22-ia=',loc(ia)
write(2, '(a,z16.16)') '22-ib=',loc(ib)
print *,'pass'
   end
