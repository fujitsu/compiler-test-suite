program main
use omp_lib
implicit none
integer,parameter::N=100
integer::a=1
integer::b=2
integer::c=0
integer::i
integer::tnum
!$omp parallel if(parallel:((.not. a==b)))
!$omp cancel parallel if(cancel:a==b)
  do i=1,N
!$omp master
tnum=OMP_GET_NUM_THREADS()
tnum=tnum*200
!$omp end master
!$omp atomic
    c=c+1
!$omp end atomic
  end do
!$omp end parallel
!$omp parallel if(parallel:(((.not. (a==b)))))
  do i=1,N
!$omp atomic
    c=c+1
!$omp end atomic
  end do
!$omp end parallel
  if(c==tnum) then
    print *, 'pass'
  else
    print *, 'c=',c
  endif
end program
