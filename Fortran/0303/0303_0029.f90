      program heap
       i1=1 ; i2=5
        call sub(i1,i2,0)
        print *,'pass'
      end program heap

      subroutine sub(i1,i2,izero)
       integer(8)::i(2)
       integer(4),dimension(5)::aa,bb
       integer(4),dimension(1,2,3,4,5)::cc
        aa=izero
        bb=izero
        i(1)=i1
        i(2)=i2
        aa=aa(i1:i2)+f2()
        bb=bb(i1:i2)+f2()
!$omp parallel workshare
           aa=aa(i(1):i(2))+bb(i(1):i(2))+ubound(cc)
           bb=bb(i(1):i(2))+lbound(cc)
!$omp end parallel workshare
!$omp parallel
           aa=1
!$omp end parallel
       contains
         function f2() result(rr)
          integer(4),dimension(5)::rr
           rr=1
         end function f2
      end subroutine sub
