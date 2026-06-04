call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
integer i
integer*8 j
real r
real*8 r8
i=100
j=100
r=100
r8=100
!$omp parallel
!$omp atomic
i=i+1
!$omp atomic
j=j+1_8
!$omp atomic
r=r+1.0
!$omp atomic
r8=r8+1.0d0
!$omp endparallel
if(i.ne.j) print *,'fail'
if(r.ne.r8) print *,'fail'
end
subroutine s2
integer i
integer*8 j
real r
real*8 r8
i=100
j=100
r=100
r8=100
!$omp parallel
!$omp atomic
i=i-1
!$omp atomic
j=j-1_8
!$omp atomic
r=r-1.0
!$omp atomic
r8=r8-1.0d0
!$omp endparallel
if(i.ne.j) print *,'fail'
if(r.ne.r8) print *,'fail'
end
subroutine s3
integer i
integer*8 j
real r
real*8 r8
i=100
j=100
r=100
r8=100
!$omp parallel
!$omp atomic
i=i*1
!$omp atomic
j=j*1_8
!$omp atomic
r=r*1.0
!$omp atomic
r8=r8*1.0d0
!$omp endparallel
if(i.ne.j) print *,'fail'
if(r.ne.r8) print *,'fail'
end
subroutine s4
integer i
integer*8 j
real r
real*8 r8
i=100
j=100
r=100
r8=100
!$omp parallel
!$omp atomic
i=i/1
!$omp atomic
j=j/1_8
!$omp atomic
r=r/1.0
!$omp atomic
r8=r8/1.0d0
!$omp endparallel
if(i.ne.j) print *,'fail'
if(r.ne.r8) print *,'fail'
end
