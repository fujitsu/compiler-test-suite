      module mod0
       integer::i,ii,iii,iiii
      end module

      module mod1
       use mod0
       integer::j,jj,jjj,jjjj
       integer::k=0
      end module

      program ompv2
      use mod1
      common /com/ m,mm,mmm,mmmm

!$omp parallel num_threads(10)

!$omp do reduction(+:k),lastprivate(i,ii,iii,iiii),firstprivate(j,jj,jjj,jjjj)
      do i=1,10
      do ii=1,10
      do iii=1,10
      do iiii=1,10
        k=k+1
      enddo
      enddo
      enddo
      enddo

!$omp do reduction(+:i,ii,iii),lastprivate(j,jj,jjj,jjjj),firstprivate(m,mm,mmm,mmmm)
      do j=1,iiii-1
      do jj=1,iiii-1
      do jjj=1,iiii-1
      do jjjj=1,iiii-1
        i=i+1
        ii=ii+1
        iii=iii+1
      enddo
      enddo
      enddo
      enddo

!$omp do reduction(+:j,jj,jjj),lastprivate(m,mm,mmm,mmmm)
      do m=1,jjjj-1
      do mm=1,jjjj-1
      do mmm=1,jjjj-1
      do mmmm=1,jjjj-1
        j=j+1
        jj=jj+1
        jjj=jjj+1
      enddo
      enddo
      enddo
      enddo

!$omp end parallel
      if (k/=10000) print *,k
      if (i/=10011.or.ii/=10011.or.iii/=10011.or.iiii/=11) print *,i,ii,iii,iiii
      if (j/=10011.or.jj/=10011.or.jjj/=10011.or.jjjj/=11) print *,j,jj,jjj,jjjj
      if (m/=11.or.mm/=11.or.mmm/=11.or.mmmm/=11) print *,m,mm,mmm,mmmm

      print *,'pass'

      end
