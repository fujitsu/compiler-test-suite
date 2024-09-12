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
      do 10 j=1,10,2
      do 10 i=1,10
10    i3(i,j)=1
      do 11 j=1,10,2
      do 12 i=1,10
12    i4(i,j)=2
      do 13 i=1,9
13    r3(i,j)=r4(i,j)
11    i3(1,j)=2
      do 14 j=1,m
      do 14 i=1,n
14    i30(i,j)=1
      do 15 j=1,m-1
      do 16 i=1,n
16    i40(i,j)=2
      do 17 i=1,9
17    r3(i,j)=r4(i,j)
15    i3(1,j)=2
      write(6,*) i1,i2,i3,i4
      write(6,*) r1,r2,r3,r4
      write(6,*) d1,d2,d3,d4
      write(6,*) i30(1,1),i30(n,m)
      write(6,*) i40(1,1),i40(n,m)
      do 20 i=1,100
20    i1(i)=i2(i)+r1(i)
      do 21 i=1,99
21    i2(i)=i1(i)+r1(i)
      do 22 i=1,97
22    i1(i)=i2(i)+r1(i)
      do 23 i=1,n
23    i10(i)=i20(i)+i10(i)
      do 24 i=1,m-3
24    r1(i)=r2(i)+r3(i,5)
      write(6,*) i1,i2,i10(1),i10(n),r1
      do 30 i=1,100
30    i1(i)=i2(i)+r1(i)
      do 31 i=1,100
31    i2(i)=i1(i)+r1(i)
      do 32 i=1,99
32    i1(i)=i2(i)+r1(i)
      m=m+10
      do 33 i=1,100
33    i10(i)=i20(i)+i10(i)
      do 34 i=1,10
34    r1(i)=r2(i)+r3(i,5)
      do 35 i=2,100
35    r2(i)=i2(i)+r1(i)
      m=m-10
      do 36 i=1,m
36    r2(i)=i2(i)+r1(i)
      do 37 i=1,m
37    r2(i)=i2(i)+r1(i)
      write(6,*) i1,i2,i10(1),i10(n),r1,r2
      do 40 j=1,2
      do 40 i=1,10000
40    i30(i,j)=j
      do 41 j=3,5
      do 42 i=1,10000,2
42    i30(i,j)=j+1
      do 43 i=1,10000,2
43    i40(i,j)=j+2
41    continue
      do 44 j=1,m-8
      do 44 i=1,10000
44    i30(i,j)=i30(i,j)+j
      do 45 j=1,m-1
      do 46 i=1,10000,2
46    i30(i,j)=i30(i,j)+i
      do 47 i=1,10000,2
47    i40(i,j)=i40(i,j)+1
45    continue
      write(6,*) i30(1,1),i30(10,10),i30(11,10),i30(11,2)
      write(6,*) i40(1,1),i40(10,10),i40(11,10),i40(11,2)
      is=0
      ip=0
      do 100 i=1,100
      ii=max(i2(i),i)
      is=max(i1(i),i)
100   ip=max(i1(i),i)
      do 101 i=1,100
      is=is+ i2(i)
101   ip=ip+ i2(i)
      do 102 i=20,30
       r1(i)=r2(i)+d1(i)
       r2(i+20)=d1(i)
102    d2(i)=r2(i)+d1(i)
      write(6,*) is,ip,r1,r2,d2
      is1=0
      is2=0
      is3=0
      is4=0
      is5=0
      is6=0
      is7=0
      ip=0
      do 110 i=1,100
      if(i.gt.50) is1=is1+i1(i)
      if(i.lt.50) is2=is2+i1(i)
      if(i.le.50) is3=is3+i1(i)
      if(i.ge.50) is4=is4+i1(i)
      if(i.eq.50) is5=is5+i1(i)
      if(i.ne.50) is6=is6+i1(i)
110   ip=ip+i2(i)
      do 111 i=1,100
      if(i.gt.50) is1=is1+i1(i)
      if(i.lt.51) is2=is2+i1(i)
      if(i.le.52) is3=is3+i1(i)
      if(i.ge.53) is4=is4+i1(i)
      if(i.eq.54) is5=is5+i1(i)
      if(i.ne.55) is6=is6+i1(i)
      r1(i)=0.5
111   ip=ip+i2(i)
      do 112 i=1,100
112   r2(i)=sqrt(r1(i))
      do 113 i=1,100
113   if(i.ne.50) r2(i)=sqrt(r1(i))+r2(i)
      do 114 i=1,100
      r2(i)=sqrt(r1(i))+i
114   if(i.ne.50) r2(i)=sqrt(r1(i))+r2(i)
      write(6,*) is1,is2,is3,is4,is5,is6,ip,r1,r2
      is1=0
      is2=0
      is3=0
      is4=0
      is5=0
      is6=0
      is7=0
      ip=0
      do 120 j=1,100
      do 120 i=1,100
      if(i.gt.50) is1=is1+i1(i)
      if(i.lt.50) is2=is2+i1(i)
      if(i.le.50) is3=is3+i1(i)
      if(i.ge.50) is4=is4+i1(i)
      if(i.eq.50) is5=is5+i1(i)
      if(i.ne.50) is6=is6+i1(i)
120   ip=ip+i2(i)
      do 121 j=1,100
      do 121 i=1,100
      if(i.gt.50) is1=is1+i1(i)
      if(i.lt.51) is2=is2+i1(i)
      if(i.le.52) is3=is3+i1(i)
      if(i.ge.53) is4=is4+i1(i)
      if(i.eq.54) is5=is5+i1(i)
      if(i.ne.55) is6=is6+i1(i)
      r1(i)=0.5
121   ip=ip+i2(i)
      do 122 j=1,100
      do 122 i=1,100
122   r2(i)=sqrt(r1(i))
      do 123 j=1,100
      do 123 i=1,100
123   if(i.ne.50) r2(i)=sqrt(r1(i))+r2(i)
      do 124 j=1,100
      do 124 i=1,100
      r2(i)=sqrt(r1(i))+i
124   if(i.ne.50) r2(i)=sqrt(r1(i))+r2(i)
      do 125 j=1,10
      do 125 i=1,10
      r3(i,j)=r1(i)+r1(j)
      r2(i)=r4(i,j)
125   i1(i)=i1(i)+i
      write(6,*) is1,is2,is3,is4,is5,is6,ip,r1,r2,r3,i1
      do 130 i=40,50
        i1(i)=1
        i1(i+1)=2
        i1(i+2)=3
        i1(i+3)=4
130     i1(i+4)=5
      do 131 i=60,71
        i2(i)=1
        i2(i+1)=2
        i2(i+2)=3
        i2(i+3)=4
        i2(i+4)=5
        i1(i)=1
        i1(i+1)=2
        i1(i+2)=3
        i1(i+3)=4
131     i1(i+4)=5
        do 132 i=1,10000
        i10(i)=i10(i)+1
132     i20(i)=i20(i)+2
        write(6,*) i1,i2,i10(1),i10(10000),i20(1),i20(10000)
      do 140 i=1,100
        i1(i)=i2(i)*i+i1(i)
140     r1(i)=r2(100)+r1(i)+r2(1)
      write(6,*) i1,r1
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
