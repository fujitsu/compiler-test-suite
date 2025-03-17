      program main
       integer(4),parameter::k1=1,k10=10
        integer(4)::isum(k1:k10,k1:k1)
        do i = k1 , k1
          call s0( isum(k1,i) )
        enddo
        if ( sum(isum) /= 2100 ) print *,'error'
        print *,'pass'
      end program main

      subroutine s0( isum )
       integer(4),parameter::k1=1,k10=10,k20=20
        integer(4)::aa(k1:k20,k1:k10)
        integer(4)::isum(k1:k10)
        do j = k1 , k10
          aa(:,j) = ( (/(i,i=1,k20)/) )
          isum(j) = 0
        enddo
        do j = 1 , k10
          call s1(aa(1,j),isum(j),k20)
        enddo
      end subroutine

      subroutine s1(aa,isum,k20)
        integer(4),intent(in)::k20
        integer(4)::aa(k20)
        integer(4)::isum
        isum = sum(aa)
      end subroutine s1
