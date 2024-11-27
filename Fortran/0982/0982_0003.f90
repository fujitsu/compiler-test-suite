call aaaa
call bbbb
call cccc
print *,'pass'
contains
subroutine aaaa
integer,dimension(:,:),allocatable::a1,a2
integer::n=2
allocate(a1(n,n))
allocate(a2(n,n))
a1=n
a2=n
!$omp parallel firstprivate(a2) private(a1)
  do i=1,n
     a1(1,i)=i
     a2(1,i)=a2(1,i)+i
  end do
!$omp end parallel
if(any(a1/=a2)) print *,'err1'
end subroutine
subroutine bbbb
integer,dimension(:,:),allocatable::a1,a2
integer::n=2
allocate(a1(n,n))
allocate(a2(n,n))
a1=n
a2=n
!$omp parallel private(a1) firstprivate(a2)
  do i=1,n
     a1(1,i)=i
     a2(1,i)=a2(1,i)+i
  end do
!$omp end parallel
if(any(a1/=a2)) print *,'err2'
end subroutine
subroutine cccc
integer,dimension(:,:),allocatable::a1,a2
integer::n=2
allocate(a1(n,n))
allocate(a2(n,n))
a1=n
a2=n
!$omp parallel firstprivate(a1,a2)
  do i=1,n
     a1(1,i)=i
     a2(1,i)=a2(1,i)+i
  end do
!$omp end parallel
if(any(a1/=a2)) print *,'err3'
end subroutine
end
