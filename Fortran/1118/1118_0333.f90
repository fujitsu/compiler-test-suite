call aaaaa
print *,'pass'
end
subroutine aaaaa
integer*1 i1
common /a/i1(10)
!$omp parallel 
!$omp task
!$omp parallel 
do i=1,10
  i1(i)=i
  if(i1(i).eq.9) goto 10
enddo
10 goto 20
  stop
20 if(i1(9).ne.9) print *,'err'
!$omp end parallel
!$omp end task
!$omp end parallel
end
