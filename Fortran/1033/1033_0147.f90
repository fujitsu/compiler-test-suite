      program main
       integer(8),parameter::k1=1,k10=10
       complex(8)::isum(k1:k10,k1:k1)
        do i = k1 , k1
          call s0( isum(k1,i) )
        enddo
        if ( sum(isum) /= (2100.0d0,-2100.0d0) ) print *,'error',sum(isum)
        print *,'pass'
      end program main

      subroutine s0( isum )
       integer(8),parameter::k1=1,k10=10,k20=20
       complex(8)::aa(k1:k20,k1:k10)
       complex(8)::isum(k1:k10)
        do j = k1 , k10
          aa(:,j) = ( (/(dcmplx(i,-i),i=1,k20)/) )
          isum(j) = 0
        enddo
        do j = 1 , k10
          call s1(aa(1,j),isum(j),k20)
        enddo
      end subroutine

      subroutine s1(aa,isum,k20)
       integer(8),intent(in)::k20
       complex(8)::aa(k20)
       complex(8)::isum
        isum = sum(aa)
      end subroutine s1
