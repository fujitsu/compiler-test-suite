subroutine s1
integer,save::k1,n1
integer      ::k2
write(1, '("s1 k1=",z16.16)')loc(k1)
write(1, '("s1 k2=",z16.16)')loc(k2)
!$omp task
write(1, '("s1 out do concurrent k1=",z16.16)')loc(k1)
do concurrent(k1=1:1)
write(1, '("s1 do concurrent k1=",z16.16)')loc(k1)
write(1, '("s1 do concurrent n1=",z16.16)')loc(n1)
end do
!$omp end task
end
subroutine s2
integer,save::k1,n1
integer      ::k2
write(1, '("s2 k1=",z16.16)')loc(k1)
write(1, '("s2 k2=",z16.16)')loc(k2)
!$omp task 
write(1, '("s2 out do k1=",z16.16)')loc(k1)
do k1=1,1
write(1, '("s2 do k1=",z16.16)')loc(k1)
write(1, '("s2 do n1=",z16.16)')loc(n1)
end do
!$omp end task
end
subroutine s3
integer,save::k1,n1
integer      ::k2
write(1, '("s3 k1=",z16.16)')loc(k1)
write(1, '("s3 k2=",z16.16)')loc(k2)
!$omp parallel
write(1, '("s3 out do concurrent k1=",z16.16)')loc(k1)
do concurrent(k1=1:1)
write(1, '("s3 do concurrent k1=",z16.16)')loc(k1)
write(1, '("s3 do concurrent n1=",z16.16)')loc(n1)
end do
!$omp end parallel
end
subroutine s4
integer,save::k1,n1
integer      ::k2
write(1, '("s4 k1=",z16.16)')loc(k1)
write(1, '("s4 k2=",z16.16)')loc(k2)
!$omp parallel
write(1, '("s4 out do k1=",z16.16)')loc(k1)
do k1=1,1
write(1, '("s4 do k1=",z16.16)')loc(k1)
write(1, '("s4 do n1=",z16.16)')loc(n1)
end do
!$omp end parallel
end
call omp_set_num_threads(1)
call s1
call s2
call s3
call s4
print *,'pass'
end
