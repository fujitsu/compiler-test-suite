 program main
   integer,parameter::ans=10
   integer,allocatable::tmp
   allocate(tmp)
   tmp=0
 !$omp simd lastprivate(tmp)
   do i=1,ans
      tmp=i
   enddo
   if (tmp/=10) print *,900
print*,'pass'
 end program main
