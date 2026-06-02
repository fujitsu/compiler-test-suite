block
!$omp parallel
call sss1(1)
call sss2(2)
call sss3(3)
call sss4(4)
!$omp end parallel
end block
print *,'pass'
end
subroutine sss1(j)
integer::j
!$omp atomic read seq_cst
i=j
if(i/=1) print *,'err'
end
subroutine sss2(j)
integer::j
!$omp atomic read,seq_cst
i=j
if(i/=2) print *,'err'
end
subroutine sss3(j)
integer::j
!$omp atomic seq_cst read
i=j
if(i/=3) print *,'err'
end
subroutine sss4(j)
integer::j
!$omp atomic seq_cst,read
i=j
if(i/=4) print *,'err'
end
