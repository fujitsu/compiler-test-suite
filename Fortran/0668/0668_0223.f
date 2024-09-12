      program main
      integer*2 ha1(100)
      integer*4 ia1(100)
      integer*4 iqa1(100)
      logical*4 la1(100),lb1(100),lc1(100)
      data n/100/
      do 1 i=n,1,-1
         ia1(i)  = 1989 - i
         ha1(i)  = ia1(i) + i
         iqa1(i) = ha1(i) + ia1(i) + i
    1 continue
      call dbg(n)
      do 10 i=1,100
         la1(i) = btest(ia1(i),2)
         lb1(i) = btest(ha1(i),2)
         lc1(i) = btest(iqa1(i),2)
   10 continue
      write(6,100) la1,lb1,lc1
      do 20 i=n,1,-1
         ia1(i)  = ibset(ia1(i),2)
         ha1(i)  = ibset(ha1(i),2)
         iqa1(i) = ibset(iqa1(i),2)
   20 continue
      do 30 i=1,n,2
         ia1(i)  = ibclr(ia1(i),2)
         ha1(i)  = ibclr(ha1(i),2)
         iqa1(i) = ibclr(iqa1(i),2)
   30 continue
      do 40 i=1,100
         write(1) ia1(i),ha1(i),iqa1(i)
   40 continue
      do 50 i=5,n
         ia1(i) = ia1(i) + ha1(i) - iqa1(i)
         call callpe(ia1(i-1),i)
         ia0 = ia1(i) + n
         call callpe(ia0,i)
   50 continue
      do 60 i=1,n,2
         ia1(i) = func(ia1(i),ha1(i),iqa1(i))
   60 continue
      write(6,200) ia1
  100 format(1h ,35l2)
  200 format(1h ,7i10)
      stop
      end
      subroutine dbg(n)
      complex*8 ca1(100),cb1(100),ca0,cb0
      data cb1/100*(0.0,0.0)/
      cb1(n) = dfloat(1989)
      do 10 i=1,n-1
         ca1(i) = dfloat(0)
         cb1(i) = dfloat(i)
         ca0 = cb1(i)
         cb0 = cb1(i+1)
         cb1(i) = (ca0 + cb0) / 2
         ca1(i) = ca1(i) + cb1(i) + ca0
   10 continue
      ca1(n) = cb1(n)
      write(6,100) ca1
  100 format(1h ,2('  (',f15.1,',',f15.1,')'))
      return
      end
      subroutine callpe(ia0,n)
      integer ia0,n
      do 10 i=1,n
         ia0 = ia0 + n
   10 continue
      return
      end
      function func(ia0,ha0,iqa0)
      integer*4 ia0
      integer*2 ha0
      integer*4 iqa0
      func = ia0 + ha0 + iqa0 / 3
      return
      end
