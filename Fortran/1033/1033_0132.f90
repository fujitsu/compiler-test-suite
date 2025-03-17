      program main
       i1=1 ; i2=5
        call sub(i1,i2,0)
        print *,'pass'
      end program main

      subroutine sub(i1,i2,izero)
       integer(8)::i(2)
       integer(4),dimension(5)::aa,bb
       integer(4),dimension(1,2,3,4,5)::cc
        aa=izero
        bb=izero
        i(1)=i1
        i(2)=i2
        aa=aa(i1:i2)+f1()
        bb=bb(i1:i2)+f2()
        call s1()
        call s2()
       contains
         subroutine s1()
!$omp parallel workshare
           aa=aa(i(1):i(2))+bb(i(1):i(2))+ubound(cc)
           bb=bb(i(1):i(2))+lbound(cc)
!$omp end parallel workshare
         end subroutine s1
         subroutine s2()
           if (any(aa/=(/3,6,9,12,15/))) print *,'error 1',aa
           if (any(bb/=(/2,2,2,2,2/))) print *,'error 2',bb
         end subroutine s2
         function f1() result(rr)
          integer(4),dimension(5)::rr
           rr(:)=(/(k,k=1,10,2)/)
         end function f1
         function f2() result(rr)
          integer(4),dimension(5)::rr
           rr(:)=(/(1,k=1,5)/)
         end function f2
      end subroutine sub
