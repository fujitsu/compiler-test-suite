i3=1
a=1
b=1
ii3=1
!$omp  single
!$omp  parallel default(firstprivate)
do kkk=1,1
ii3=3
!$omp do
do ii1=1,1  
do ii2=1,1  
do ii3=1,1  
end do
end do
end do
!$omp  end do
print *,ii3
if( ii3 .ne. 3) print *,'ng3aa',ii3
i3=2
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
!$omp endsimd
if( i3 .ne. 11) print *,'ng3'
end do
!$omp  endparallel
!$omp  endsingle
if( i3 .ne. 1) print *,'ng3x'
if( ii3 .ne. 1) print *,'ng3bb'
print *,"pass"
end

