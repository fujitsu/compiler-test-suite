module m1
  integer(8)::k1,k2
end

use m1
integer::n
save
call omp_set_num_threads(1)
write(1,'("s1 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s1 in doconcurrent n=",z16.16)')loc(n)
!$omp task shared(n)
write(1,'("s1 task shared in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,10001
if (k1/=loc(n)) print *,100001
!$omp task
write(1,'("s1 task in task shared in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,10011 
if (k1==loc(n)) print *,100002
!$omp end task
!$omp end task
end do

write(1,'("s2 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s2 in doconcurrent n=",z16.16)')loc(n)
!$omp task default(private) shared(k1)
write(1,'("s2 task private in doconcurrent n=",z16.16)')loc(n)
if (k1==loc(n)) print *,200001
k2=loc(n)
!$omp task
write(1,'("s2 task in task private in doconcurrent n=",z16.16)')loc(n)
if (k2==loc(n)) print *,200002
!$omp end task
!$omp end task
end do

write(1,'("s3 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s3 in doconcurrent n=",z16.16)')loc(n)
!$omp task default(firstprivate)
write(1,'("s3 task firstprivate in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,30001 
if (k1==loc(n)) print *,300001
k2=loc(n)
!$omp task
write(1,'("s3 task in task firstprivate in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,30011 
if (k2==loc(n)) print *,300002
!$omp end task
!$omp end task
end do

write(1,'("s7 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s7 in doconcurrent n=",z16.16)')loc(n)

!$omp task default(shared)
write(1,'("s7 task shared in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,7001
if (k1/=loc(n)) print *,700001
k2=loc(n)
!$omp task
write(1,'("s7 task in task firstprivate in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,70011 
if (k2==loc(n)) print *,700002
!$omp end task
!$omp end task
end do

write(1,'("s4 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s4 in doconcurrent n=",z16.16)')loc(n)
!$omp parallel default(private) shared(k1)
write(1,'("s4 parallel default(private) in doconcurrent n=",z16.16)')loc(n)
if (k1==loc(n)) print *,400001
k2=loc(n)
!$omp task
write(1,'("s4 task in parallel default(private) in doconcurrent n=",z16.16)')loc(n)
if (k2==loc(n)) print *,400002
!$omp end task
!$omp end parallel
end do

write(1,'("s5 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s5 in doconcurrent n=",z16.16)')loc(n)
!$omp parallel default(firstprivate)
write(1,'("s5 parallel default(firstprivate) in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,5001
if (k1==loc(n)) print *,500001
k2=loc(n)
!$omp task
write(1,'("s5 task in parallel default(firstprivate) in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,5011
if (k1==loc(n)) print *,500002
!$omp end task
!$omp end parallel
end do

write(1,'("s6 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s6 in doconcurrent n=",z16.16)')loc(n)

!$omp parallel default(shared)
write(1,'("s6 parallel default(share) in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,6001
if (k1/=loc(n)) print *,600001
k2=loc(n)
!$omp task
write(1,'("s6 task in parallel default(share) in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,6011
if (k1==loc(n)) print *,600002
!$omp end task
!$omp end parallel
end do

print *,'pass'
end

