      program main
      integer i,k,l,m,n,o,p,q,r,s,t,sum,sum2
      logical logic
      dimension a(10,10,10,10)
      integer dim(10,10)
      integer inte_dim(1,2,3,4,5,6,7)
      real    real_dim(1,2,3,4,5,6,7)
      r=1
      p=1
      q=1
      do t=1,100,2
        do s=1,10,3
          r=r+1
          p=p+2
          q=q+3
        enddo
      enddo
      r=r+1
      p=p+1
      q=q+1
      logic = .true.
      dim=1
      dim=dim+2
      sum=0
      do i=1,10
        do j=1,10
          sum=sum+dim(i,j)
        enddo
      enddo
      if( sum.ne.300 ) then
        logic = .false.
      endif
      inte_dim=2
      inte_dim=inte_dim+1
      sum=0
      do i=1,1
        do j=1,2
          do k=1,3
            do l=1,4
              do m=1,5
                do n=1,6
                  do o=1,7
                    sum=sum+inte_dim( i,j,k,l,m,n,o )
                  enddo
                enddo
              enddo
            enddo
          enddo
        enddo
      enddo
      if( sum.ne.(1*2*3*4*5*6*7)*3 ) then
        logic = .false.
      endif
      real_dim=2.
      real_dim=real_dim+1.
      sum2=0
      do i=1,1
        do j=1,2
          do k=1,3
            do l=1,4
              do m=1,5
                do n=1,6
                  do o=1,7
                    sum2=sum2+real_dim( i,j,k,l,m,n,o )
                  enddo
                enddo
              enddo
            enddo
          enddo
        enddo
      enddo
      if( sum2.ne.(1.*2.*3.*4.*5.*6.*7.)*3. ) then
        logic = .false.
      endif
      k=0
      call getnum(j)

      do i=1,20
        do k1=1,10
          k=k+k1
        enddo
        do k2=1,j
          k=k+k2
        enddo
        do jjjj=1,10
          k=k+1
        enddo
      enddo
      if( k.ne.( 55+55+10 )*20 ) then
        logic = .false.
      endif
      j=0
11    continue
21      continue
31        continue
            j=j+1
          if(j.le.10) goto 31
        if(j.le.20) goto 21
      if(j.le.30) goto 11
      j=j+1
      if ( j.ne.( 30+2 ) ) then
        logic = .false.
      endif
      i=1
10    continue
        j=1
20      continue
          k=1
30        continue
            l=1
40          continue
              a(i,j,k,l)=5.0
              l=l+1
            if( l.le.10 ) goto 40
            k=k+1
          if( k.le.10 ) goto 30
          j=j+1
        if( j.le.10 ) goto 20
        i=i+1
      if( i.le.10 ) goto 10
      if( a(1,2,3,4) .ne. a(4,5,6,7) ) then
        logic = .false.
      endif
      if( logic ) then
        write(6,*) ' ********* ******** ok **********'
      else
        write(6,*) ' ********* ******** ng **********'
      endif
      stop
      end

      subroutine getnum( i )
      integer            i
      i=10
      return
      end
