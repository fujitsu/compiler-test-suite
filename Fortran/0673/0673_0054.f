      integer*2    i1(10),ii1(10),i2(10),i3(10),i4(10),item(30),ii2(10)
      real*4       r1(10),r2(10),r3(10),r4(10),r5(10),a1,a2(20),
     1             a3(20),a4(20),a5(20)
      real*8       d
      do 10 n=1,30
   10 item(n)=n
      diff=0.5e-4
      read(5,12) (i1(n),n=1,7)
   12 format(i5/i5//i5///i5////i5/////i5//////i5)
      do 14 n=1,7
   14 ii1(n)=32767
      write(6,500)
  500 format(1h1 / 32h*fortran*     fd15135     enter  //)
      write(6,600)
  600 format(//20x,43htest 1  i/o statement no format           /,
     1            9h         //30x,18h* input          */)
      write(6,700)
  700 format(15x,8h- item -,5x,11h- justice -,5x,13h-read data -,5x,
     1       17h-compare value -,5x,14h- difference -/)
      write (6,16) item(1)
   16 format(17x,1h(,i2,1h))
         do 17 n=1,7
      idef=i1(n)-ii1(n)
      if(idef.eq.0) write(6,18) i1(n),ii1(n),idef
   18 format(30x,    6h* ok *,8x,i6,15x,i6,18x,i5)
      if(idef.ne.0) write (6,20)      i1(n),ii1(n),idef
   20 format(28x,   9h* error *, 7x,i6,15x,i6,18x,i5)
   17 continue
      write (6,22)
   22 format(//30x,19h* output          */)
   24 format(15x,8h- item -)
      write(6,750) item(2)
  750 format(/17x,1h(,i2,1h))
      do 26 n=1,8
   26 i1(n)=12345
      write(6,1000)
 1000 format(50x,35hformat  i5/i5//i5///i5////i5/////i5)
      write(6,28) (i1(n),n=1,6)
   28 format(30x,i5/30x,i5//30x,i5///30x,i5////30x,i5/////30x,i5)
      read(5,32) i1(1),i1(2),i1(3)
   32 format(     i1  , i2  ,  i3 , i4 ,  i5 )
      read(5,34) i2(1),i2(2),i2(3),i2(4),i2(5)
   34 format(     i2  , i3 ,  i4 ,  i5 ,  i6 ,  i7 ,  i8 )
      read(5,36) r1(1),r1(2),r1(3),r1(4)
   36 format(      f5.1, f5.2, f5.3,f5.4)
      read(5,38) r2(1),r2(2),r2(3),r2(4)
   38 format(     f10.1,f10.2,f10.3,f10.4,f10.5,f10.6)
      write(6,501)
  501 format(1h1,//1x)
      write(6,700)
      write(6,16) item(3)
      do 42 n=1,3
      ii1(n)=12345/10**(5-n)
      idef=i1(n)-ii1(n)
      if(idef.eq.0) write(6,18) i1(n),ii1(n),idef
      if(idef.ne.0) write (6,20) i1(n),ii1(n),idef
   42 continue
      write(6,16) item(4)
      do 44 n=1,5
      ii2(n)=-12345/10**(5-n)
      idef=i2(n)-ii2(n)
      if(idef.eq.0) write(6,18) i2(n),ii2(n),idef
   44 continue
      write(6,16) item(5)
      do 46 n=1,4
      r=12345./10.**n
      def=abs((r1(n)-r)/r)
      if(def.lt.diff)  write(6,48) r1(n),r,def
      if(def.ge.diff)  write(6,50) r1(n),r,def
   48 format(30x,6h* ok *,5x,f14.4,7x,f14.4,12x,f12.5)
   50 format(28x,9h* error *,4x,f14.4,7x,f14.4,12x,f14.4)
   46 continue
      write(6,16) item(6)
      do 52 n=1,4
      r=-12345./10**n
      def=abs((r2(n)-r)/r)
      if(def.ge.diff)  write(6,50) r2(n),r,def
      write(6,48) r2(n),r,def
   52 continue
      write(6,49)
   49 format(1h1,/////30x,19h* output          */)
      do 51 n=1,5
      i1(n)=12345./10.**(5-n)
   51 r1(n)=0.12345* 10.**(n-1)
      write(6,16) item(7)
      write(6,2000)
      write(6,2005) i1(1),i1(2),i1(3),i1(4),i1(5)
 2000 format(/28x,6h data ,10x,13hcompare value)
 2005 format(/28x,6h     1,3x,2hi5,10x,i5,/
     *        28x,6h    12,3x,2hi6,9x,i6,/
     *        28x,6h   123,3x,2hi7,8x,i7,/
     *        28x,6h  1234,3x,2hi8,7x,i8,/
     *        28x,6h 12345,3x,2hi9,6x,i9,/)
      write(6,16) item(8)
      write(6,2010) r1(1),r1(2),r1(3),r1(4),r1(5)
 2010 format(/28x,7h0.12345,2x,5hf10.5,7x,f10.5,/
     *        28x,6h1.2345,3x,5hf11.4,7x,f11.4,/
     *        28x,6h12.345,3x,5hf12.3,7x,f12.3,/
     *        28x,6h123.45,3x,5hf12.2,7x,f12.2,/
     *        28x,6h1234.5,3x,5hf12.1,7x,f12.1)
      write(6,501)
      write(6,58)
   58 format(//20x,25htest 3   repeat          //30x,11h* input    ,
     1       7h      */)
      write(6,700)
      read(5,60) (i1(n),n=1,10)
   60 format(i2,i3,i4,i5,i6)
      read(5,62) (r1(n),n=1,8)
   62 format(f6.1,f6.2,f6.3,f6.4)
      read(5,64) (i2(i),i=1,4)
   64 format(4i5)
      read(5,66) r3(1),r3(2),i3(1),r3(3),i3(2),r3(4),i3(3),r3(5),
     1           i3(4),r3(6),i3(5),i3(6)
   66 format(2f7.1,2(i3,f7.2),2(i4,f7.3),2i5)
      read(5,68) (r4(n),n=1,4),(i4(n),r5(n),n=1,2)
   68 format(4f10.5/2(i5,f10.5))
      write(6,16) item(9)
      n=0
      do 70 l=1,2
      do 70 m=1,5
      n=n+1
      ii1(n)=((-1)**l)*12345/10**(5-m)
      idef=i1(n)-ii1(n)
      if(idef.eq.0) write(6,18) i1(n),ii1(n),idef
      if(idef.ne.0) write(6,20) i1(n),ii1(n),idef
   70 continue
      write(6,16) item(10)
      n=0
      do 72 l=1,2
      do 72 m=1,4
      n=n+1
      r=(-1)**l*12345./10**m
      def=abs((r1(n)-r)/r)
      if(def.lt.diff)  write(6,48) r1(n),r,def
      if(def.ge.diff)  write(6,50) r1(n),r,def
   72 continue
      write(6,16) item(11)
      do 74 n=1,4
      ii1(n)=12345
      idef=i2(n)-ii1(n)
      if(idef.eq.0) write(6,18) i2(n),ii1(n),idef
      if(idef.ne.0) write(6,20) i2(n),ii1(n),idef
   74 continue
      write(6,16) item(12)
      do 75 n=1,2
      r=(-1)**n*1234.5
      def=abs((r3(n)-r)/r)
      if(def.lt.diff) write(6,48) r3(n),r,def
      if(def.ge.diff) write(6,50) r3(n),r,def
   75 continue
      ni=0
      nr=2
      do 76 l=1,2
      do 76 m=1,2
      ni=ni+1
      nr=nr+1
      ii3=(-1)**m*12/10**(2-l)
      rr3=(-1)**m*1234.5/10**l
      idef=i3(ni)-ii3
      def=abs((r3(nr)-rr3)/rr3)
      if(idef.eq.0) write(6,18) i3(ni),ii3,idef
      if(idef.ne.0) write(6,20) i3(ni),ii3,idef
      if(def.lt.diff) write(6,48) r3(nr),rr3,def
      if(def.ge.diff) write(6,50) r3(nr),rr3,def
   76 continue
      do 78 n=5,6
      ii1(n)=(-1)**n*123
      idef=i3(n)-ii1(n)
      if(idef.ne.0) write(6,20) i3(n),ii1(n),idef
   78 continue
      write(6,16) item(13)
      do 80 n=1,4
      r=0.12345
      def=abs((r4(n)-r)/r)
      if(def.lt.diff) write(6,48) r4(n),r,def
      if(def.ge.diff) write(6,50) r4(n),r,def
   80 continue
      do 82 n=1,2
      r=0.12345
      ip=12345
      idef=i4(n)-ip
      def=abs((r5(n)-r)/r)
      if(idef.eq.0) write(6,18) i4(n),ip,idef
      if(idef.ne.0) write(6,20) i4(n),ip,idef
      if(def.lt.diff) write(6,48) r5(n),r,def
      if(def.ge.diff) write(6,50) r5(n),r,def
   82 continue
      write(6,49)
      l=12345
      r=0.12345
      d=12345.6789
      write(6,16) item(14)
      write(6,1010)
 1010 format(50x,25hdata  l,l,l,l,l,l,l,l,l,l /50x,12hformat  5i10  //)
      write(6,84) l,l,l,l,l,l,l,l,l,l
   84 format(30x,5i10)
      write(6,1011)
 1011 format(50x,21hdata  l,r,l,r,l,r,l,r /50x,17hformat  i10,f10.5 //)
      write(6,16) item(15)
      write(6,86) l,r,l,r,l,r,l,r
   86 format(30x,i10,f10.5)
      write(6,16) item(16)
      write(6,1012)
 1012 format(50x,29hdata  l,r,d,l,r,d,l,r,d,l,r,d  /50x,59hformat  i10,f
     -10.5,d20.10/2(i10,f10.4,d20.9)/i10,f10.3,d20.8 //)
      write(6,88) l,r,d,l,r,d,l,r,d,l,r,d
   88 format(30x,i10,f10.5,d20.10/30x,2(i10,f10.4,d20.9)/30x,
     1       i10,f10.3,d20.8)
      write(6,16) item(17)
      write(6,90) l,r,l,r,l,r,r,l,r,l,r,r,l,l
   90 format(/10x,6hans = ,i7,1x,f7.5,1x,2(i7,1x,f7.5,1x),2(f7.5,1x,i7,
     *       1x),2(f7.5,1x),2(i7,1x))
      write(6,999)
  999 format(//10x,118hcomp=   12345 0.12345   12345 0.12345   12345 0.1
     *2345 0.12345   12345 0.12345   12345 0.12345 0.12345   12345   123
     *45 )
      write(6,501)
      write(6,92)
   92 format(//20x,45htest 4  line feed           (1h ,1h0,1h+,1h1 ,
     1              8h       )/)
      read(5,94) a1,a2,a3,a4,a5
   94 format(a4/20a4/20a4/20a4/20a4)
      write(6,96) item (18),a1
   96 format(///17x,1h(,i2,1h),9x,a4,8h        ,10x,10h          /)
      write(6,98) a2,a3,a4,a5
      write(6,100)
  100 format(1h ,29x,26habcdefghijklmnopqrstuvwxyz)
      write(6,102)
  102 format(1h ,29x,26h12345678901234567890123456)
      read(5,94) a1,a2,a3,a4,a5
      write(6,96) item(19),a1
      write(6,98) a2,a3,a4,a5
   98 format(4(30x,20a4/)//30x,6hresult/)
      write(6,104)
  104 format(1h0,29x,26habcdefghijklmnopqrstuvwxyz)
      write(6,106)
  106 format(1h0,29x,26h12345678901234567890123456)
      read(5,94) a1,a2,a3,a4,a5
      write(6,96) item(20),a1
      write(6,98) a2,a3,a4,a5
      write(6,108)
  108 format(1h ,29x,26hoooooooooooooooooooooooooo)
      write(6,110)
  110 format(1h+,29x,26h++++++++++++++++++++++++++)
      write(6,501)
      read(5,93) a1,a2,a3
   93 format(a4/20a4/20a4)
      write(6,96) item(21),a1
      write(6,111) a2,a3
  111 format(2(30x,20a4/)//30x,6hresult)
      write(6,112)
  112 format(1h1,29x,26habcdefghijklmnopqrstuvwxyz)
      write(6,114)
  114 format(1h0,6x,31h*fortran*     fd15135     exit /)
      stop
      end
