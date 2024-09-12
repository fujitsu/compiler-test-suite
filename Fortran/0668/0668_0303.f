      program main
      integer*4  i1(100),i2(100),i3(10,10),i4(10,10)
      real*4     r1(100),r2(100),r3(10,10),r4(10,10)
      real*8     d1(100),d2(100),d3(10,10),d4(10,10)
      integer*4  i10(10000),i20(10000),i30(10000,10),i40(10000,10)
      call initn(n,m)
      call initi(i10,10000)
      call initi(i20,10000)
      call initi(i30,100000)
      call initi(i40,100000)
      do 1  i=1,100
      i1(i)=1
      i2(i)=2
      r1(i)=3
      r2(i)=4
      d1(i)=5
1     d2(i)=6
      do 2  j=1,10
      do 2  i=1,10
      i3(i,j)=i
      i4(i,j)=j
      r3(i,j)=1
      r4(i,j)=2
      d3(i,j)=i+1
2     d4(i,j)=j+1
      do 10 j=1,10
      do 10 i=1,10
      i4(i,j)=i
10    continue
      do 20 j=1,10,2
      do 20 i=1,10
      i4(i,j)=i
      r4(i,j)=r4(i,j)+1
      d4(i,j)=i
20    continue
      do 30 j=1,10,3
      s=r4(1,j)
      do 30 i=1,10
      i4(i,j)=i
      i4(i,j)=r4(i,j)+s
30    continue
      do 40 j=1,10,3
      do 41 i=1,10
      i4(i,j)=i
      i4(i,j)=r4(i,j)+s
41    continue
      d4(1,j)=5
40    continue
      do 50 j=1,10,3
      s=r4(j,1)
      do 51 i=1,10
      i4(i,j)=r4(i,j)+s
51    continue
      d4(1,j)=5
50    continue
      do110 j=1,10
      i4(1,j)=5
      do110 i=1,10
      i4(i,j)=i
110   continue
      do121 j=1,10,2
      do120 i=1,10
      i4(i,j)=i
      r4(i,j)=r4(i,j)+1
      d4(i,j)=i
120   continue
121   i4(1,j)=5
      do130 j=1,10,3
      s=i4(1,j)
      do130 i=1,10
      i4(i,j)=i
      i4(i,j)=r4(i,j)+s
130   continue
      do140 j=1,10,3
      do141 i=1,10
      i4(i,j)=i
      i4(i,j)=r4(i,j)+s
141   continue
      d4(1,j)=i4(j,1)
140   continue
      do 150j=1,10,3
      s=r4(j,1)
      do151 i=1,10
      i4(i,j)=r4(i,j)+s
151   continue
      do152 i=1,10,2
      i4(i,j)=r4(i,j)+s
152   continue
      d4(1,j)=5
150   continue
      do 160j=1,10,3
      s=r4(j,1)
      do161 i=1,10
      i4(i,j)=r4(i,j)+s
161   continue
      if(d4(1,1).gt.1.0) goto 170
160   continue
      d4(1,2)=1.0
170   continue
       write(6,*) i3,i4,r4,d4
      stop
      end
      subroutine initi(ia,n)
      integer*4 ia(n)
      do 1 i=1,n
 1    ia(i)=1
      return
      end
      subroutine initn(n,m)
      n=10000
      m=10
      return
      end
      subroutine sub(k)
      k=k+1
      return
      end
      function  fsub(k)
      k=k+1
      fsub=k
      return
      end
