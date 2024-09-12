      module mod
       integer::i,ii,iii,iiii
       integer::k=0
      end module

      program ompv2
      use mod
!$omp parallel do reduction(+:k),lastprivate(i,ii,iii,iiii)
      do i=1,10
      do ii=1,10
      do iii=1,10
      do iiii=1,10
        k=k+1
      enddo
      enddo
      enddo
      enddo

      if (k/=10000) print *,k
      if (i/=11.or.ii/=11.or.iii/=11.or.iiii/=11) print *,i,ii,iii,iiii

      print *,'pass'

      end
