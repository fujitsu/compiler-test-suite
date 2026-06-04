subroutine s1
integer:: ks=0,ka(2)=0
!$omp parallel
!$omp atomic 
ks=ks+1
!$omp end parallel
if (ks==0) print *,101,ks
!$omp parallel
!$omp atomic capture
k=ks
ks=max(ks,1    )
!$omp end atomic 
!$omp end parallel
write(1,*) ks,k,ka

end
call s1
print *,'pass'
end
