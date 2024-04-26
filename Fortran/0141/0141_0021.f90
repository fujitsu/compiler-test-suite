subroutine s1
integer,save::k1,n1
integer      ::k2
write(1,'("s1 k1=",z16.16)')loc(k1)
write(1,'("s1 k2=",z16.16)')loc(k2)
do concurrent(k1=1:1)
write(1,'("s1 do concurrent k1=",z16.16)')loc(k1)
write(1,'("s1 do concurrent n1=",z16.16)')loc(n1)
!$omp task
write(1,'("s1 in task do concurrent k1=",z16.16)')loc(k1)
write(1,'("s1 in task do concurrent n1=",z16.16)')loc(n1)
!$omp end task
end do
end
subroutine s2
integer,save::n1
integer      ::k2,k1
write(1,'("s2 k1=",z16.16)')loc(k1)
write(1,'("s2 k2=",z16.16)')loc(k2)
do concurrent(k1=1:1)
write(1,'("s2 do concurrent k1=",z16.16)')loc(k1)
write(1,'("s2 do concurrent n1=",z16.16)')loc(n1)
!$omp task
write(1,'("s2 in task do concurrent k1=",z16.16)')loc(k1)
if (k1/=1) print *,101,k
write(1,'("s2 in task do concurrent n1=",z16.16)')loc(n1)
!$omp end task
end do
end
subroutine s3
integer,save::k1,n1
integer      ::k2
write(1,'("s3 k1=",z16.16)')loc(k1)
write(1,'("s3 k2=",z16.16)')loc(k2)
do concurrent(k1=1:1)
write(1,'("s3 do concurrent k1=",z16.16)')loc(k1)
write(1,'("s3 do concurrent n1=",z16.16)')loc(n1)
!$omp task firstprivate(k1)
write(1,'("s3 in task do concurrent k1=",z16.16)')loc(k1)
write(1,'("s3 in task do concurrent n1=",z16.16)')loc(n1)
!$omp end task
end do
end
call omp_set_num_threads(1)
call s1
call s2
call s3
print *,'pass'
end
