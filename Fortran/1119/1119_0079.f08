integer a(1)
a=-1
!$omp target dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&
!$omp bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb&
!$omp cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc_cc
!$omp simd  lastprivate(a)
do k=1,1      
a(1)=1
enddo
!$omp end simd
if(a(1)/=1) print *,'err'
!$omp end target teams distribute parallel do simdaaaaaaaaaaaaaaaaaaaaaaaaaaaa&
!$omp zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz&
!$omp yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy()
print *,'pass'
end
