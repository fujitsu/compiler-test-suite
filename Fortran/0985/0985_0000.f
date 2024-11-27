c
      real*4   rn(2),sn(2),vl(5)
      real*8   rd(2)
      character*8 ymd
      complex*8   cx,cy
      complex*16  cty,cdx,cdy
      equivalence (cx,rn(1)),(cdx,rd(1))
      common   itt,itm,lc,lf,loop
      func(n)=vl(n)+(vl(n+1)-vl(n))*random(k)
      data  vl/0.1e-1,0.1e0,0.5e0,1.0e0,10.0e0/,sn/1.0e0,-1.0e0/
      k=0
c
      ip=0
      lf=0
      lc=50
      er=5.00000e-4
c
      rr=50.0e0
c
      do 60 i=1,4
      irs=0
   10 irs=irs+1
      ipn=0
      if(irs.eq.3) go to 60
   20 ipn=ipn+1
      if(ipn.eq.3) go to 10
      rn(1)=sign(func(i),sn(irs))
      rn(2)=sign(func(i),sn(ipn))
      itm=-26
      itt=25
c
      do 50 loop=1,16
      if(lc-50) 40,30,30
   30 ip=ip+1
      write(6,*) 'test'
      lc=0
   40 j=itt+loop
      cy=cx**j
      cdy=cy
      rd(1)=rn(1)
      rd(2)=rn(2)
      cty=cdx**j
      call chckci(cx,j,cdy,cty,er)
   50 continue
c
      go to 20
   60 continue
  120 write(6,501)
  501 format(1h0,2x,'(complex*8)**integer test end')
      stop
      end
      subroutine    chckci(cx,j,cy1,cty1,er)
c
      real*8    c1(2),c2(2),df(2)
      complex*8  cx
      complex*16 cty,cy,cty1,cy1
      equivalence (cy  ,c1(1)),(cty,c2(1))
      common itt,itm,lc,lf,loop
c
      cy=cy1
      cty=cty1
      gs=0
      do 20 i=1,2
      df(i)=dabs(c2(i)-c1(i))
      if(dabs(c2(i)).gt.1.0d0) df(i)=dabs(df(i)/c2(i))
      if(df(i).lt.er) df(i)=0.0d0
      if(df(i).ne.0.0d0) gs=1
   20 continue
      if(gs.eq.0) go to 50
c
   30 if(lf.eq.1) go to 40
      write(6,100) cx,itt
  100 format(1h0,15x,'(',2(e14.7,1x),t32,',',t48,')',8x,i11,/)
      lf=1
      lc=lc+3
   40 write(6,101) j,cy,df(1),cty,df(2)
  101 format(1h ,51x,'exp=',i11,2x,'result=(',e14.7,',',e14.7,')',
     *      2x,'err=r=',d14.7,/,69x,
     *      'true  =(',e14.7,',',e14.7,')',2x,'err=i=',d14.7,/)
      lc=lc+3
   50 if(loop.ne.16 ) return
      if(lf.eq.1) go to 60
      write(6,102) cx,itt,itm,loop
  102 format(1h0,2x,'** ok **', 5x,'(',e14.7,',',e14.7,')',9x,i11,'  -',
     *      1h ,i11,7x,i5)
      lc=lc+2
      return
   60 lf=0
      write(6,103) itm,loop
  103 format(1h0,2x,'** ng **',58x,'-  ',i11,7x,i5)
      lc=lc+2
      return
      end
      real function  random(ir)
      integer a(2),b(4),c(2,5)
      data    c / 2061,0,2,0,0101,0202,1234,1234,9807,3564 /
      save a
      save kc
      if (ir.eq.0) go to 10
   90 kc=0
  100 kc=kc+1
      if (kc.lt.6) go to 110
      write(6,120)
  120 format(1h0 / 21x,'*error*     result = 0 inital is non.' / )
      go to 90
  110 do 30 i=1,2
   30 a(i)=c(i,kc)
   10 b(4)=a(2)*a(2)
      b(3)=a(1)*a(2)+a(1)*a(2)
      b(2)=a(1)*a(1)
      b(1)=0
      k=0
      do 60 i=1,4
      j=5-i
      b(j)=b(j)+k
      k=b(j)/10000
   60 b(j)=mod(b(j),10000)
      do 70 i=1,2
   70 a(i)=b(i+1)
      if (a(1).ne.0) go to 80
      if (a(2).lt.2) go to 100
   80 random=a(2)/100000000.0e0+a(1)/10000.0e0
      return
      end
