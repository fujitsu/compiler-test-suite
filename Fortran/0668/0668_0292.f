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
      do 10 j=1,1
      do 10 i=1,10,2
10    i3(i,j)=i3(i,j)
      do 11 j=1,2
      do 11 i=1,10,2
11    i3(i,j)=i3(i,j)
      do 12 j=1,3
      do 12 i=1,10,2
12    i3(i,j)=i3(i,j)
      do 13 j=1,4
      do 13 i=1,10,2
13    i3(i,j)=i3(i,j)
      do 14 j=1,5
      do 14 i=1,10,2
14    i3(i,j)=i3(i,j)
      do 15 j=1,6
      do 15 i=1,10,2
15    i3(i,j)=i3(i,j)
      do 16 j=1,7
      do 16 i=1,10,2
16    i3(i,j)=i3(i,j)
      do 17 j=1,8
      do 17 i=1,10,2
17    i3(i,j)=i3(i,j)
      do 18 j=1,9
      do 18 i=1,10,2
18    i3(i,j)=i3(i,j)
      do 19 j=1,10
      do 19 i=1,10,2
19    i3(i,j)=i3(i,j)
      do 20 j=1,10
      do 20 i=1,10,2
20    i4(i,j)=i4(i,j)+i4(i,j)
      do 21 j=1,10
      do 21 i=1,10,2
21    i4(i,j)=i4(i,j)+i4(i,j)
      do 22 j=1,10
      do 22 i=1,10,2
22    i4(i,j)=i4(i,j)+i4(i,j)
      do 23 j=1,10
      do 23 i=1,10,2
23    i4(i,j)=i4(i,j)+i4(i,j)
      do 24 j=1,10
      do 24 i=1,10,2
24    i4(i,j)=i4(i,j)+i4(i,j)
      do 25 j=1,10
      do 25 i=1,10,2
25    i4(i,j)=i4(i,j)+i4(i,j)
      do 26 j=1,10
      do 26 i=1,10,2
26    i4(i,j)=i4(i,j)+i4(i,j)
      do 27 j=1,10
      do 27 i=1,10,2
27    i4(i,j)=i4(i,j)+i4(i,j)
      do 28 j=1,10
      do 28 i=1,10,2
28    i4(i,j)=i4(i,j)+i4(i,j)
      do 29 j=1,10
      do 29 i=1,10,2
29    i4(i,j)=i4(i,j)+i4(i,j)
      do 30 j=1,m
      do 30 i=1,m
30    r4(i,j)=r4(i,j)+r4(i,j)
      do 31 j=1,m
      do 31 i=1,m
31    r4(i,j)=r4(i,j)+r4(i,j)
      do 32 j=1,m
      do 32 i=1,m
32    r4(i,j)=r4(i,j)+r4(i,j)
      do 33 j=1,m
      do 33 i=1,m
33    r4(i,j)=r4(i,j)+r4(i,j)
      do 34 j=1,m
      do 34 i=1,m
34    r4(i,j)=r4(i,j)+r4(i,j)
      do 35 j=1,m
      do 35 i=1,m
35    r4(i,j)=r4(i,j)+r4(i,j)
      do 36 j=1,m
      do 36 i=1,m
36    r4(i,j)=r4(i,j)+r4(i,j)
      do 37 j=1,m
      do 37 i=1,m
37    r4(i,j)=r4(i,j)+r4(i,j)
      do 38 j=1,m
      do 38 i=1,m
38    r4(i,j)=r4(i,j)+r4(i,j)
      do 39 j=1,m
      do 39 i=1,m
39    r4(i,j)=r4(i,j)+r4(i,j)
      write(6,*) i3,i4,r4
      do 40 j=1,2
      do 40 i=1,m
40    r3(i,j)=r3(i,j)+i
      do 41 j=1,2
      do 41 i=1,m
 50    format(a10)
      r3(i,j)=r3(i,j)
     c       +r3(i,j)
      r4(i,j)=r4(i,j)
     e       +r4(i,j)
     f       +r4(i,j)
41    continue
      write(6,*) r3,r4
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
