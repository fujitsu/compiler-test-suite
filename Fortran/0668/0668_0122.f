      program main
      parameter (r4eps=1e-4)
      integer * 4 i4a00a(50),i4a00b(50),i4a00c(50),i4s001,i4s002
      real  * 4   r4a00a(50),r4a00b(50),r4a00c(50)
      real  * 8   r8a00a(50),r8a00b(50),r8a00c(50)
      common /com1/i4a00a,i4a00b,i4a00c,i4s001,i4s002
      common /com2/r4a00a,r4a00b,r4a00c
      common /com3/r8a00a,r8a00b,r8a00c
      data n01,m01,ic1/1,50,1/
      call init
      do 100 i001=n01,m01,ic1
       i4a00a(i001)=i4a00a(i001)+i4a00b(i001)
       if ((i4a00a(i001).ne.0).and.(i4a00a(i001).gt.i4a00b(i001))) then
          r4a00a(i001)=r4a00a(i001)+i001+sin(r4a00b(i001))
          if (abs(r4a00a(i001)).gt.r4eps) goto 101
          if  (r4a00a(i001).gt.(real(i4a00a(i001)))) then
            r8a00a(i001)=i001+r8a00b(i001)*1.
          endif
101       continue
          r4a00b(i001)=r4a00b(i001)+i001
          if ((i001.lt.5).or.(i001.gt.40)) then
            if (sin(r4a00c(i001)).gt.0.0) then
              i4a00a(i001)=i001+1.0
              i4s001=i4s001+i001
            else
              r8a00c(i001)=r8a00c(i001)+2.
            endif
          endif
        endif
100   continue
      write(6,*) '## ##'
      write(6,900) i4a00a,i4a00b,i4a00c,i4s001
      write(6,901) r4a00a,r4a00b,r4a00c
      write(6,902) r8a00a,r8a00b,r8a00c
900   format(1h0,5i8)
901   format(1h0,5f12.5)
902   format(1h0,5f12.5)
      do 201 i002=n01,m01,ic1
      do 200 i001=n01,m01,ic1
       i4a00a(i001)=i4a00a(i001)+i4a00b(i001)
       if ((i4a00a(i001).ne.0).and.(i4a00a(i001).gt.i4a00b(i001))) then
          r4a00a(i001)=r4a00a(i001)+i001+sin(r4a00b(i001))
          if  (r4a00a(i001).gt.(real(i4a00a(i001)))) then
            r8a00a(i001)=i001+r8a00b(i001)*1.
          endif
        endif
200   continue
      do 300 i001=m01,n01,-1
          r4a00b(i001)=r4a00b(i001)+i001
          if ((i001.lt.5).or.(i001.gt.40)) then
            if (sin(r4a00c(i002)).gt.0.0) then
              i4a00a(i001)=i001+1.0
              i4s001=i4s001+i001
            else
              r8a00c(i002)=r8a00c(i002)+2.
            endif
          endif
300   continue
201   continue
      write(6,900) i4a00a,i4a00b,i4a00c,i4s001
      write(6,901) r4a00a,r4a00b,r4a00c
      write(6,902) r8a00a,r8a00b,r8a00c
      stop
      end
      subroutine init
      integer * 4 i4a00a(50),i4a00b(50),i4a00c(50),i4s001,i4s002
      real  * 4   r4a00a(50),r4a00b(50),r4a00c(50)
      real  * 8   r8a00a(50),r8a00b(50),r8a00c(50)
      common /com1/i4a00a,i4a00b,i4a00c,i4s001,i4s002
      common /com2/r4a00a,r4a00b,r4a00c
      common /com3/r8a00a,r8a00b,r8a00c
      data n01,m01,ic1/1,50,1/
      do 200 i1=n01,m01,ic1
        i4a00a(i1)=i1+3
        i4a00b(i1)=i1+2
        i4a00c(i1)=i1+1
        r4a00a(i1)=1.
        r4a00b(i1)=2.
        r4a00c(i1)=1.
        r8a00a(i1)=i1
        r8a00b(i1)=0.
        r8a00c(i1)=r8a00b(i1)+1.
200   continue
      i4s001=0.
      return
      end
