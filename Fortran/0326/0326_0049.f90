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
i=1+i
!$omp atomic
j=1_8+j
!$omp atomic
r=1.0+r
!$omp atomic
r8=1.0d0+r8
!$omp endparallel
if(i.ne.j) print *,'fail'
if(r.ne.r8) print *,'fail'
end
subroutine s2
integer i
integer*8 j
real r
real*8 r8
i=1
j=1
r=1
r8=1
!$omp parallel
!$omp atomic
i=100-i
!$omp atomic
j=100_8-j
!$omp atomic
r=100.0-r
!$omp atomic
r8=100.0d0-r8
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
i=1*i
!$omp atomic
j=1_8*j
!$omp atomic
r=1.0*r
!$omp atomic
r8=1.0d0*r8
!$omp endparallel
if(i.ne.j) print *,'fail'
if(r.ne.r8) print *,'fail'
end
subroutine s4
integer i
integer*8 j
real r
real*8 r8
i=1
j=1
r=1
r8=1
!$omp parallel
!$omp atomic
i=100/i
!$omp atomic
j=100_8/j
!$omp atomic
r=100.0/r
!$omp atomic
r8=100.0d0/r8
!$omp endparallel
if(i.ne.j) print *,'fail'
if(r.ne.r8) print *,'fail'
end
