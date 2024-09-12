       complex,allocatable:: v(:)
allocate( v(2))
v=(1,1)
!$omp task
       do i=1,2
          v(2)=v(2)+(1,1)
          if (abs(v(2)-cmplx(i+1,i+1))>0.001) print *,101,v(2),i
       end do
!$omp end task
print *,'pass'
end

