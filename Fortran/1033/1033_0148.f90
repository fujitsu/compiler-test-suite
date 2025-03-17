      program main
       integer(8),parameter::k1=1,k10=10
       complex(8)::sum1(k1:k10,k1:k1)
       complex(8)::sum2(k1:k10,k1:k1)
        do i = k1 , k1
          call s0( sum1(k1,i) ,sum2(k1,i) )
        enddo
        if ( sum(sum1) /= (2100.0d0,-2100.0d0) ) print *,'error 1',sum(sum1)
        if ( sum(sum2) /= (1550.0d0,-1550.0d0) ) print *,'error 2',sum(sum2)
        print *,'pass'
      end program main

      subroutine s0( sum1,sum2 )
       integer(8),parameter::k1=1,k10=10,k20=20
       complex(8)::aa(k1:k20,k1:k10)
       complex(8)::sum1(k1:k10)
       complex(8)::sum2(k1:k10)
        do j = k1 , k10
          aa(:,j) = ( (/(dcmplx(i,-i),i=1,k20)/) )
          sum1(j) = dcmplx(0.0d0,0.0d0)
          sum2(j) = dcmplx(0.0d0,0.0d0)
        enddo
        do j = 1 , k10
          call s1(aa(k1,j),sum1(j),k20)
          call s1(aa(k10+1,j),sum2(j),k10)
        enddo
      end subroutine

      subroutine s1(aa,csum,k)
       integer(8),intent(in)::k
       complex(8)::aa(k)
       complex(8)::csum
        csum = sum(aa)
      end subroutine s1
