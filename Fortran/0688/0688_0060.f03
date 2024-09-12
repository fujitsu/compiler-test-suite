call ss1
call ss2
call ss3
print *,'pass'
end
subroutine ss1
real ,dimension(:),pointer :: ptr=>null()
!$omp do lastprivate(ptr)
do j=1,10
allocate(ptr(10))
ptr(j) = 1.0
if(ptr(j)/=1.0) print *,'err'
end do
!$omp end do
if(ptr(10)/=1.0) print *,'err'
end
subroutine ss2
integer,pointer::i(:)
integer,target::j(1),k(1)
allocate(i(1))
j=0
i=>j
!$omp sections lastprivate(i) firstprivate(i)
k=100
i=>k
if(i(1)/=100) print *,'err1'
!$omp end sections 
if(i(1)/=100) print *,'err1'
end
subroutine ss3
integer,pointer::i(:)
integer,target::j(1),k(1)
allocate(i(1))
j=0
i=>j
!$omp sections firstprivate(i) lastprivate(i)
!$omp section
k=100
i=>k
if(i(1)/=100) print *,'err1'
!$omp end sections
if(i(1)/=100) print *,'err2'
!$omp sections lastprivate(i) firstprivate(i) 
!$omp section
k=200
i=>k
if(i(1)/=200) print *,'err3'
!$omp end sections
if(i(1)/=200) print *,'err4'
end
