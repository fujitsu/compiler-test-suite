call omp_set_num_threads (1)
!$omp parallel
call s1
call s2
call s3
!$omp end parallel
print *,'pass'
contains
subroutine s1
integer, pointer, dimension (:) :: a=>null()
allocate (a(2))
!$omp task
!$omp parallel firstprivate (a)
a(1) = 1
a(2) = 2
if(any(a/=(/1,2/))) print *, 'err1'
!$omp end parallel
!$omp end task
!$omp taskwait

end subroutine
subroutine s2
integer, pointer, dimension (:) :: a=>null()
integer, target, dimension (2) :: bb
bb=1
allocate (a(2))

!$omp parallel do lastprivate (a,i)
do i=1,2
a=>bb
a(i) = i
enddo
!$omp endparalleldo
if(a(2)/=2) print *, 'err2'
!$omp taskwait
end subroutine
subroutine s3
integer,dimension(:,:),pointer::a1,a2
integer::n=2
allocate(a1(n,n))
allocate(a2(n,n))
a1=n
a2=n
!$omp task
!$omp parallel private(a1) firstprivate(a2)
do i=1,n
a1(1,i)=i
a2(1,i)=a2(1,i)+i
if(a1(1,1)/=1) print *,'err3'
end do
!$omp end parallel
!$omp end task
!$omp taskwait
end subroutine
end
