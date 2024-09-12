subroutine s1
 implicit none
  real(8),parameter,dimension(*):: const=[1,2,3,4]
  integer::omp_get_thread_num
  integer::n=4,k
do k=1,3
write(1,*)'start-1'
  !$omp parallel 
     block
      real(8),allocatable:: array(:)
      real(8):: a(4)
      allocate( array(4) )
      write(1, '(" array Thread num: ",i2,1x,z16.16)')omp_get_thread_num(),loc(array)
      write(1, '(" a Thread num: ",i2,1x,z16.16)')omp_get_thread_num(),loc(a)
      array=const
      array=array+10
      if (any(array/=const+10)) write(6,*)101,array
      a=const
      a=a+10
      if (any(a/=const+10)) write(6,*)101,a
    end block
  !$omp end parallel

write(1,*)'start-2'
  !$omp parallel shared(n) 
     block
      real(8),allocatable:: array(:)
      real(8):: a(n)
      allocate( array(n) )
      write(1, '(" array Thread num: ",i2,1x,z16.16)')omp_get_thread_num(),loc(array)
      write(1, '(" a Thread num: ",i2,1x,z16.16)')omp_get_thread_num(),loc(a)
      array=const
      array=array+10
      if (any(array/=const+10)) write(6,*)102,array
      a=const
      a=a+10
      if (any(a/=const+10)) write(6,*)101,a
    end block
  !$omp end parallel
end do
end
call s1
print *,'pass'
end
