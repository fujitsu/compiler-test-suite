call ss1
print *,'pass'
end
subroutine ss1
integer::aaa(1,1,1,1,1,1,1,1),bbb(1)
aaa=1
bbb=1
!$omp atomic read
aaa(1,1,1,1,1,1,1,1)=bbb(1)
!$omp atomic read
bbb(1)=aaa(1,1,1,1,1,1,1,1)
!$omp atomic write
aaa(1,1,1,1,1,1,1,1)=bbb(1)
!$omp atomic write
bbb(1)=aaa(1,1,1,1,1,1,1,1)
!$omp atomic update
bbb(1)=bbb(1)-1
!$omp atomic update
aaa(1,1,1,1,1,1,1,1)=1-aaa(1,1,1,1,1,1,1,1)
!$omp atomic capture
aaa(1,1,1,1,1,1,1,1)=bbb(1)
bbb(1)=1*bbb(1)
!$omp end atomic
!$omp atomic capture
bbb(1)=aaa(1,1,1,1,1,1,1,1)
aaa(1,1,1,1,1,1,1,1)=aaa(1,1,1,1,1,1,1,1)*1
!$omp end atomic
end

