      program test089
c
      integer*4  i401(10,10),i402(10,10),i403(10)
      real*4     r401(10,10),r402(10,10),r403,r404
      real*4     r405(10,50),r406(10,50),r407(10,50),r408(10,50)
      real*8     r801(10,10),r802(10,10)
      real*8     r803(10,50),r804(10,50),r805(10,50),r806(10,50)
      complex    c801(10,10),c802(10,10),c803(10,10),c804(10,10)
      complex*8  c805(10)
      complex*16 c1601(10)
      logical*4  l401(10,10),l402(10,10),l403(10,10)
      parameter  (n=10,m=10)
      data       k/0/
c
      pointer (pi1,i401),(pi2,i402),(pi3,i403)
      pointer (pr1,r401),(pr2,r402),(pr3,r403),(pr4,r404)
      pointer (pr5,r405),(pr6,r406),(pr7,r407),(pr8,r408)
      pointer (pd1,r801),(pd2,r802),(pd3,r803),(pd4,r804)
      pointer (pd5,r805),(pd6,r806)
      pointer (pc1,c801),(pc2,c802),(pc3,c803),(pc4,c804),(pc5,c805)
      pointer (pq1,c1601)
      pointer (pl1,l401),(pl2,l402),(pl3,l403)
c
      pi1 = malloc(100*4)
      pi2 = malloc(100*4)
      pi3 = malloc(100*4)
      pr1 = malloc(100*4)
      pr2 = malloc(100*4)
      pr3 = malloc(1*4)
      pr4 = malloc(1*4)
      pr5 = malloc(500*4)
      pr6 = malloc(500*4)
      pr7 = malloc(500*4)
      pr8 = malloc(500*4)
      pd1 = malloc(100*8)
      pd2 = malloc(100*8)
      pd3 = malloc(500*8)
      pd4 = malloc(500*8)
      pd5 = malloc(500*8)
      pd6 = malloc(500*8)
      pc1 = malloc(100*8)
      pc2 = malloc(100*8)
      pc3 = malloc(100*8)
      pc4 = malloc(100*8)
      pc5 = malloc(10*8)
      pq1 = malloc(10*16)
      pl1 = malloc(100*4)
      pl2 = malloc(100*4)
      pl3 = malloc(100*4)
c
      call       sub01(pi1,pi2,pi3,pr1,pr2,pr3,pr4,pr5,pr6,pr7,pr8,
     +                 pd1,pd2,pd3,pd4,pd5,pd6,pc1,pc2,pc3,pc4,pc5,
     +                 pq1,pl1,pl2,pl3,k,n,m)
c
       stop
       end
c
      subroutine sub01(pi1,pi2,pi3,pr1,pr2,pr3,pr4,pr5,pr6,pr7,pr8,
     +                 pd1,pd2,pd3,pd4,pd5,pd6,pc1,pc2,pc3,pc4,pc5,
     +                 pq1,pl1,pl2,pl3,k,n,m)
      integer*4  i401(10,10),i402(10,10),i403(10)
      real*4     r401(10,10),r402(10,10),r403,r404
      real*4     r405(10,50),r406(10,50),r407(10,50),r408(10,50)
      real*8     r801(10,10),r802(10,10)
      real*8     r803(10,50),r804(10,50),r805(10,50),r806(10,50)
      complex    c801(10,10),c802(10,10),c803(10,10),c804(10,10)
      complex*8  c805(10)
      complex*16 c1601(10)
      logical*4  l401(10,10),l402(10,10),l403(10,10)
c
      pointer (pi1,i401),(pi2,i402),(pi3,i403)
      pointer (pr1,r401),(pr2,r402),(pr3,r403),(pr4,r404)
      pointer (pr5,r405),(pr6,r406),(pr7,r407),(pr8,r408)
      pointer (pd1,r801),(pd2,r802),(pd3,r803),(pd4,r804)
      pointer (pd5,r805),(pd6,r806)
      pointer (pc1,c801),(pc2,c802),(pc3,c803),(pc4,c804),(pc5,c805)
      pointer (pq1,c1601)
      pointer (pl1,l401),(pl2,l402),(pl3,l403)
c
      do 1 i=1,10
         c805(i) = float(k)
         c1601(i) = dfloat(k)
         i403(i) = i*5
         do 1 j=1,50
            r405(i,j) = float(i403(i))
            r406(i,j) = r405(i,j) + float(i403(i))
            r407(i,j) = r406(i,j) + float(i403(i))
            r408(i,j) = r407(i,j) + float(i403(i))
            r803(i,j) = dfloat(i403(i))
            r804(i,j) = r803(i,j) + dfloat(j)
            r805(i,j) = r804(i,j) + dfloat(j)
            r806(i,j) = r805(i,j) + dfloat(j)
    1 continue
c
      do 2 i=1,10
        do 2 j=1,10
           c801(i,j) = (1.1,2.2)
           c802(i,j) = (3.3,4.4)
           c803(i,j) = (5.5,6.6)
    2      c804(i,j) = (7.7,8.8)
c
      do 10 i=1,10
         do 10 j=1,i403(i)
            r405(i,j) = sqrt(float(j))
            k = k + 1
            r803(i,k) = dsqrt(dfloat(k))
            if(k.eq.i403(i)) k = 0
   10 continue
c
      i = 1
      do 20 while(i.ne.11)
         do 30 j=1,i403(i)
            k = j + i403(i)
            r406(i,j) = sin(float(k))
            k = i403(i)
            r804(i,j) = dsin(dfloat(k))
   30    continue
      i = i + 1
   20 continue
c
      do 40 i = 1,10-1
         do 50 j=1,i403(i)
            k = i403(i) - j
            r407(i,j) = cos(float(k+1))
            k = i403(i)
            r805(i,j) = dcos(dfloat(k+1))
   50    continue
   40 continue
c
      i = 0
   60 i = i + 1
         do 70 j=1,i403(i)
            r408(i,j) = tan(float(j))
            r806(i,j) = dtan(dfloat(j))
   70    continue
      if(i.ne.10) go to 60
c
      do 80 i=1,10
         do 80 j=1,50
            c805(i) = c805(i) + r405(i,j) - r406(i,j)
     +              / r407(i,j) * r408(i,j)
            c1601(i) = c1601(i) + r803(i,j) - r804(i,j)
     +              / r805(i,j) * r806(i,j)
   80 continue
c
      write(6,101) ((r405(i,j),i=1,10),j=1,50,5)
      write(6,101) ((r406(i,j),i=1,10),j=1,50,5)
      write(6,101) ((r407(i,j),i=1,10),j=1,50,5)
      write(6,101) ((r408(i,j),i=1,10),j=1,50,5)
      write(6,201) ((r803(i,j),i=1,10),j=1,50,5)
      write(6,201) ((r804(i,j),i=1,10),j=1,50,5)
      write(6,201) ((r805(i,j),i=1,10),j=1,50,5)
      write(6,201) ((r806(i,j),i=1,10),j=1,50,5)
      write(6,301) c805
      write(6,401) c1601
c
  101 format(1h ,10f7.2)
  201 format(1h ,10f7.2)
  301 format(1h ,3('  (',f8.1,',',f8.1,')'))
  401 format(1h ,3('  (',f8.1,',',f8.1,')'))
c
      do 110 i=1,n
         do 120 j=1,m,2
            i401(i,j) = i*j
            i401(i,j+1) = i401(i,j) + i*j
  120    continue
         do130 j=1,m
            i402(i,j) = j
            i402(i,j) = i402(i,j) + i401(i,j)
  130    continue
  110 continue
c
      i = 1
      do140 while(i.ne.n+1)
         do150 j=m,1,-1
            r401(i,j) = float(i*j*n/i401(i,i))
            r401(i,j) = r401(i,j) + float(i*j+n/i401(j,j))
  150    continue
         do160 j=m,1,-2
            r402(i,j)  = float(j + i402(i,i))
            r402(i,j-1) = r402(i,j) + float(j + i402(j,j))
  160    continue
         i = i + 1
  140 continue
c
      do 170 i=10,1,-1
         do180 j=1,n
            r801(i,j) = dble(r401(j,j)) / 0.11d0
            r801(i,j) = dble(r401(i,i)) + r801(i,j) / 0.11d0
  180    continue
         do190 j=1,n
            r802(i,j) = dble(r402(i,i)) / 0.22d0
            r802(i,j) = dble(r402(j,j)) / 0.22d0
  190    continue
  170 continue
c
      i = 0
  200 i = i + 1
         do 210 j=1,m
            if(i401(i,j).eq.i402(i,j)) then
               l401(i,j) = .true.
            else
               l401(i,j) = .false.
            endif
  210    continue
         do 220 j=m,1,-1
            if(r401(i,j).eq.r402(i,j)) then
               l402(i,j) = .false.
            else
               l402(i,j) = .true.
            endif
  220    continue
         do 230 j=1,m,2
            if(r801(i,j).ne.r802(i,j)) then
               l403(i,j)  = .true.
               l403(i,j+1) = l403(i,j)
            else
               l403(i,j)  = .false.
               l403(i,j+1) = l403(i,j)
            endif
  230    continue
         if(i.ne.10) go to 200
c
      do 240 i=1,n
         if(l401(i,n)) then
            do 250 j=1,m
               c801(i,j) = mod(i401(i,j),i402(i,j)) + i402(i,j)
  250       continue
         else if(l402(i,m)) then
            j = 1
            do 260 while(j.ne.m+1)
               c802(i,j) = amod(r401(i,j),r402(i,j)) + r401(i,j)
               j = j + 1
  260       continue
         else if(l403(i,3)) then
            do 270 j=1,n-1
               c803(i,j) = dmod(r801(i,j),r802(i,j)) + r801(i,j)
  270       continue
         else
            j = 0
  280       j = j + 1
               r403 = c801(i,j)
               r404 = c802(i,j)
               c804(i,j) = amod(r403,r404) + 30.11
               r403 = c804(i,j)
               r404 = c803(i,j)
               c804(i,j) = c804(i,j) + amod(r403,r404)
            if(j.ne.10) go to 280
         endif
  240 continue
c
      write(6,202) i401,i402
      write(6,302) r401,r402,r403,r404
      write(6,402) r801,r802
      write(6,502) l401,l402,l403
      write(6,602) c801,c802,c803,c804
c
  202 format(1h ,10i7)
  302 format(1h ,7f10.2)
  402 format(1h ,7f10.2)
  502 format(1h ,15l5)
  602 format(1h ,3('  (',f10.1,',',f10.1,')'))
      return
      end
