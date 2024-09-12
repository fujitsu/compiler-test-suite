subroutine s1
integer a(10),b(10)
b=1
n=10
!$omp paralleldo
do i=1,n
do j=1,n
a(i)=b(i)
enddo
enddo
!$omp end paralleldo
end
subroutine s2
integer a(10),b(10)
b=1
n=10
!$omp paralleldo
do i=1,n
do j=1,n
a(i)=b(i)
enddo
enddo
!$omp end paralleldo
end
subroutine s3
integer a(10),b(10)
b=1
n=10
!$omp paralleldo
do i=1,n
do j=1,n
a(i)=b(i)
enddo
enddo
!$omp end paralleldo
end
print *,'pass'
end
