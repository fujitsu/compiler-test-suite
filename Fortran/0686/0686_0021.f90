      module mod0
       integer::i=0,ii=0,iii=0,iiii=0
      end module

      module mod1
       use mod0
       integer::j=0,jj=0,jjj=0,jjjj=0
       integer::k=0
      end module

      program ompv2
      use mod1

!$omp parallel

!$omp do reduction(+:k),lastprivate(i),private(ii,iii,iiii)
      do i=1,10
      do ii=1,10
      do iii=1,10
      do iiii=1,10
        k=k+1
      enddo
      enddo
      enddo
      enddo

!$omp do reduction(+:k),lastprivate(j),private(jj,jjj,jjjj)
      do j=1,10
      do jj=1,10
      do jjj=1,10
      do jjjj=1,10
        k=k+1
      enddo
      enddo
      enddo
      enddo

!$omp do reduction(+:k),lastprivate(m),private(mm,mmm,mmmm)
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
      if (i/=11.or.ii/=0.or.iii/=0.or.iiii/=0) print *,i,ii,iii,iiii
      if (j/=11.or.jj/=0.or.jjj/=0.or.jjjj/=0) print *,j,jj,jjj,jjjj
      if (m/=11) print *,m

      print *,'pass'

      end
