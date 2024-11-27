call s1
print *,'pass'
contains
subroutine s1
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
if(any(a2/=reshape((/2,2,2,2/),(/2,2/)))) print *,'err'
end subroutine
end
