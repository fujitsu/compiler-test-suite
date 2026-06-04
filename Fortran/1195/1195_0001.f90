module m1
  type b
    integer(8),allocatable::bv(:)
    !!!integer(8)::bv(2)
   end type
 end
    subroutine s1
use m1
      type (b):: v
      integer(8)::p1
      allocate(v%bv(2))
      p1=loc(v%bv)
        v%bv=-1
      !print '("1",z16.16)',loc(v%bv(1))
      k=1
!$omp parallel do lastprivate(v)
      do i=1,k
        v%bv(i)=100
        v%bv(i+1)=101
      !print '("2",z16.16)',loc(v%bv(1))
        if (p1==loc(v%bv(1)))print *,6001,p1,loc(v%bv(1))
      enddo
!$omp end parallel do 
      !print '("3",z16.16)',loc(v%bv(1))
        if (   (v%bv(1)/=100)) print *,102,v%bv(1)
        if (   (v%bv(2)/=101)) print *,103,v%bv(2)
end
call s1
      print *,'sngg967p : pass'
      end
