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
integer,save::k1,n1
integer      ::k2
write(1,'("s2 k1=",z16.16)')loc(k1)
write(1,'("s2 k2=",z16.16)')loc(k2)
do k1=1,1
write(1,'("s2 do k1=",z16.16)')loc(k1)
write(1,'("s2 do n1=",z16.16)')loc(n1)
!$omp task 
write(1,'("s2 in task  do k1=",z16.16)')loc(k1)
write(1,'("s2 in task  do n1=",z16.16)')loc(n1)
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
!$omp parallel
write(1,'("s3 in parallel do concurrent k1=",z16.16)')loc(k1)
write(1,'("s3 in parallel do concurrent n1=",z16.16)')loc(n1)
!$omp end parallel
end do
end
subroutine s4
integer,save::k1,n1
integer      ::k2
write(1,'("s4 k1=",z16.16)')loc(k1)
write(1,'("s4 k2=",z16.16)')loc(k2)
do k1=1,1
write(1,'("s4 do k1=",z16.16)')loc(k1)
write(1,'("s4 do n1=",z16.16)')loc(n1)
!$omp parallel
write(1,'("s4 in parallel do k1=",z16.16)')loc(k1)
write(1,'("s4 in parallel do n1=",z16.16)')loc(n1)
!$omp end parallel
end do
end
call omp_set_num_threads(1)
call s1
call s2
call s3
call s4
print *,'pass'
end
