      call sub()
      print *,'pass'
      end 

      subroutine sub()
      common /com/i,j,k
!$omp parallel firstprivate(/com/)
      i=i+1 ; j=j+1
      k=i+j
      if (i/=2.or.j/=3.or.k/=5) print *,"fail"
!$omp end parallel
  !$  if (.true.) then
  !$    if (i/=1.or.j/=2.or.k/=3) print *,"fail"
  !$  else
        if (i/=2.or.j/=3.or.k/=5) print *,"fail"
  !$  endif
      end subroutine

      block data
      common /com/ i(3)
      data i /1,2,3/
      end block data
