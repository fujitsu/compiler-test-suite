       complex,allocatable:: v
allocate( v)
v=(1,1)
!$omp task firstprivate(v) 
       do i=1,2
          v=v+(1,1)
          if (abs(v-cmplx(i+1,i+1))>0.001) print *,101,v,i
       end do
!$omp end task
print *,'pass'
end

