call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
integer i,ii
integer*8 j,jj
real r,rr
real*8 r8,rr8
i=100
j=100
r=100
r8=100
ii=1
jj=1
rr=1
rr8=1
!$omp parallel
!$omp atomic
i=ii+i
!$omp atomic
j=jj+j
!$omp atomic
r=rr+r
!$omp atomic
r8=rr8+r8
!$omp endparallel
if(i.ne.j) print *,'fail'
if(r.ne.r8) print *,'fail'
end
subroutine s2
integer i,ii
integer*8 j,jj
real r,rr
real*8 r8,rr8
i=1
j=1
r=1
r8=1
ii=100
jj=100
rr=100
rr8=100
!$omp parallel
!$omp atomic
i=ii-i
!$omp atomic
j=jj-j
!$omp atomic
r=rr-r
!$omp atomic
r8=rr8-r8
!$omp endparallel
if(i.ne.j) print *,'fail'
if(r.ne.r8) print *,'fail'
end
subroutine s3
integer i,ii
integer*8 j,jj
real r,rr
real*8 r8,rr8
i=100
j=100
r=100
r8=100
ii=1
jj=1
rr=1
rr8=1
!$omp parallel
!$omp atomic
i=ii*i
!$omp atomic
j=jj*j
!$omp atomic
r=rr*r
!$omp atomic
r8=rr8*r8
!$omp endparallel
if(i.ne.j) print *,'fail'
if(r.ne.r8) print *,'fail'
end
subroutine s4
integer i,ii
integer*8 j,jj
real r,rr
real*8 r8,rr8
i=1
j=1
r=1
r8=1
ii=100
jj=100
rr=100
rr8=100
!$omp parallel
!$omp atomic
i=ii/i
!$omp atomic
j=jj/j
!$omp atomic
r=rr/r
!$omp atomic
r8=rr8/r8
!$omp endparallel
if(i.ne.j) print *,'fail'
if(r.ne.r8) print *,'fail'
end
