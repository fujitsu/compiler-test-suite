call test01()
print *,'pass'
end

subroutine test01()
integer a(10)
common /com/jj
common /com1/ii
!$omp threadprivate(/com/)
!$omp parallel do private(/com1/)
do i=1,10
   ii=1  
end do
!$omp end paralleldo
!$omp parallel do lastprivate(/com1/)
do i=1,10
   ii=1  
end do
!$omp end paralleldo
!$omp parallel do firstprivate(/com1/)
do i=1,10
   ii=1  
end do
!$omp end paralleldo
!$omp parallel do shared(/com1/)
do i=1,10
   ii=1  
end do
!$omp end paralleldo
!$omp parallel default(private)
do i=1,10
   a(i)=i
end do
!$omp end parallel
!$omp parallel default(shared)
do i=1,10
   a(i)=i
end do
!$omp end parallel
!$omp parallel reduction(max:i)
do i=1,10
   a(i)=i
end do
!$omp end parallel
j=1
!$omp parallel if (j.eq.1)      
do i=1,10
   a(i)=i
end do
!$omp end parallel
!$omp parallel private(i) firstprivate(a)
do i=1,10
   a(i)=i
end do
!$omp end parallel
!$omp do
do i=1,10
   a(i)=i
end do
!$omp end do
!$omp do lastprivate(i)
do i=1,10
   a(i)=i
end do
!$omp end do
j=1
!$omp do schedule(static,j)
do i=1,10
   a(i)=i
end do
!$omp end do
!$omp do ordered
do i=1,10
   a(i)=i
end do
!$omp end do
i=1
!$omp atomic
i=i+1
!$omp critical
i=i+1
!$omp endcritical
!$omp critical (sss)
i=i+1
!$omp endcritical (sss)

!$omp sections
i=1
!$omp section
j=1
!$omp section
j=1
!$omp end sections
!$omp sections
i=1
!$omp section
j=1
!$omp section
j=1
!$omp end sections  nowait

!$omp single
i=1
!$omp end single

!$omp master
i=1
!$omp end master

!$omp barrier
i=1

!$omp flush (k)
i=1

!$omp ordered
i=1
!$omp end ordered

end
