      module mod
       integer::i,ii,iii,iiii
       integer::j,jj,jjj,jjjj
       integer::k=0
      end module

      program ompv2
      use mod

!$omp parallel

!$omp do reduction(+:k),lastprivate(i,ii,iii,iiii)
      do i=1,10
      do ii=1,10
      do iii=1,10
      do iiii=1,10
        k=k+1
      enddo
      enddo
      enddo
      enddo

!$omp do reduction(+:k),lastprivate(j,jj,jjj,jjjj)
      do j=1,10
      do jj=1,10
      do jjj=1,10
      do jjjj=1,10
        k=k+1
      enddo
      enddo
      enddo
      enddo

!$omp do reduction(+:k),lastprivate(m,mm,mmm,mmmm)
      do m=1,10
      do mm=1,10
      do mmm=1,10
      do mmmm=1,10
        k=k+1
      enddo
      enddo
      enddo
      enddo

!$omp end parallel
      if (k/=30000) print *,k
      if (i/=11.or.ii/=11.or.iii/=11.or.iiii/=11) print *,i,ii,iii,iiii
      if (j/=11.or.jj/=11.or.jjj/=11.or.jjjj/=11) print *,j,jj,jjj,jjjj
      if (m/=11.or.mm/=11.or.mmm/=11.or.mmmm/=11) print *,m,mm,mmm,mmmm

      print *,'pass'

      end
