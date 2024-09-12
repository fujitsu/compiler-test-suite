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
      if(i3(i,j).ne.1) then
      i4(i,j)=i
      r4(i,j)=i
      d4(i,j)=i
      endif
10    continue
      do 20 j=1,10
      do 20 i=1,10,2
      if(i3(i,j).ne.1) then
      i4(i,j)=i
      r4(i,j)=i
      d4(i,j)=i
      endif
20    continue
      do 30 j=1,10,2
      do 30 i=1,10,2
      if(i3(i,j).ne.1) then
      i4(i3(i,j),j)=i
      r4(i3(i,j),j)=i
      d4(i3(i,j),j)=i
      endif
30    continue
        write(6,*) i3,i4,r4,d4
      do 110 j=1,10,2
      do 110 i=1,10
      if(i3(i,j).ne.1) then
      i4(i,j)=i4(i,j)+1
      r4(i,j)=r4(i,j)+1
      d4(i,j)=d4(i,j)+1
      endif
110    continue
      do 120 j=1,10
      do 120 i=1,10,2
      if(i3(i,j).ne.1) then
      i4(i,j)=i4(i,j)+2
      r4(i,j)=r4(i,j)+2
      d4(i,j)=d4(i,j)+2
      endif
120    continue
      do 130 j=1,5
      do 130 i=1,10,2
      if(i3(i,j).ne.1) then
      i4(i,6)=i4(i3(i,j),j)
      r4(i,6)=r4(i3(i,j),j)
      d4(i,6)=d4(i3(i,j),j)
      endif
130    continue
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
