      integer       aaa, a1,  a2(10),    v1,v2,v3,ff1, x1,p1,q1, aa1(10)
      real        b4(20),b1,  b2(10),             ff2, x2,p2,q2, bb1(10)
      complex            c1,  c2(10),             ff3, x3,p3,q3, cc1(10)
      double precision   d1,  d2(10),             ff4, x4,p4,q4, dd1(10)
      logical            e1,  e2(10),             ff5, x5,p5,q5, ee1(10)
      integer            u1,u2,u3
      integer  fd1
      real     fd2
      complex  fd3
      double precision   fd4
      logical  fd5
      character*4        b3(20),cmp(20)
      common        v1,v2,v3
      equivalence   (a2(1),b2(1),c2(1),d2(1),e2(1),b4(1))
      equivalence   (u1,u2,u3)
      ff1(x1)=p1*x1+q1
      ff2(x2)=p2*x2+q2
      ff3(x3)=p3*x3+q3
      ff4(x4)=p4*x4+q4
      ff5(x5)=p5.and.x5.or.q5
      open(1,access='direct',form='formatted',recl=16,blank='zero')
      open(2,access='direct',form='unformatted',recl=28)
      open(3,access='direct',recl=50,form='formatted')
      write (6,1000)
      item=1
      ino=1
      n=1
      do 10 i=1,3,2
          do 15  j=1,3
          write (1,rec=n,fmt=100) n
          inquire(1,nextrec=v1)
   15     n=2
          n=3
   10 continue
  100 format ( i4,8h 123 abc )
      a1=0
 1000 format (1h1/ 6x,35h*fortran*      ff11104        enter //
     /             6x,10x,8h+ item +,10x,12h+ justice + ,10x,
     /            20h + computed result +,10x,17h+ compare value + / )
      do 20 i=1,n
      read (1,rec=i,fmt=111) a2(i)
      inquire(1,nextrec=v1)
  111 format (3x,i4 )
   20 a1=a1+a2(i)
      ians=6036
      if (a1.eq.ians) go to 25
      write (6,1100) item,ino,a1,ians,(a2(i),i=1,3)
 1100 format (1h0,15x,1h(,i2,1h-,i2,1h),13x,7h*error*,20x,i6,23x,i6 /
     /        46x,14h(a2(i),i=1,3)=,3(2x,i6) / )
      go to 30
   25 write (6,1200) item,ino,a1,ians
 1200 format (1h0,15x,1h(,i2,1h-,i2,1h),13x,7h*ok*   ,20x,i6,23x,i6 /)
   30 ino=2
      do 35 i=1,5,2
          do 34  j=1,5,2
               k = i*j
               write (1,rec=k,fmt=112) j
               inquire(1,nextrec=v1)
          n=v1
   34     continue
   35 continue
  112 format ( 16h0123456789abcdef,t7,i2 )
      read (1,rec=1,fmt=113)  a2(1)
      read (1,rec=3,fmt=113)  a2(2)
      read (1,rec=5,fmt=113)  a2(3)
      read (1,rec=9,fmt=114)  a2(4)
      read (1,rec=15,fmt=114) a2(5)
      read (1,rec=25,fmt=114) a2(6)
      do 40 i=1,6
   40 n=n+a2(i)
  113 format (5x,i3)
  114 format (5x,i4)
      ians=16663
      if (n.eq.ians) go to 45
      write (6,1300) item,ino,n,ians,(a2(i),i=1,6)
 1300 format (1h0,15x,1h(,i2,1h-,i2,1h),13x,7h*error*,20x,i6,23x,i6 /
     /        46x,14h(a2(i),i=1,6)=,6(2x,i6) / )
      go to 50
   45 write (6,1200) item,ino,n,ians
   50 ino=3
      v2=1
      data   p1,q1/2*2/,p2,q2/2*2.0/,p3,q3/2*(0.0,2.0)/,p4,q4/2*2.0d0/
      data   p5,q5/2*.true./
      do 51 i=1,160
      write(2,rec=v2) p1,p2,p3,p4,p5
   51 inquire(2,nextrec=v2)
      q5=.false.
      do 60 i=10,160,50
          do 55 j=1,9,2
          a1=i*j
          b1=i*j
          c1=i*j
          d1=i*j
          e1=i.eq.j*10
          k=i-j
      fd1=ff1(a1)
      fd2=ff2(b1)
      fd3=ff3(c1)
      fd4=ff4(d1)
      fd5=ff5(e1)
      write (2,rec=k) fd1,fd2,fd3,fd4,fd5
      inquire(2,nextrec=v2)
          p1=3
          q1=3
          p2=3.0
          q2=3.0
          p3=(0.0,3.0)
          q3=(0.0,3.0)
          p4=3.0d0
          q4=3.0d0
          p5=.false.
          q5=.false.
   55     continue
      p1=-p1
      q1=-q1
      p2=-p2
      q2=-q2
      q3=-q3
      p3=-p3
      q4=-q4
      p4=-p4
   60 continue
      i=2
      do 65  j= 9,160,50
      read (2,rec=j)  aa1(i),bb1(i),cc1(i),dd1(i),ee1(i)
      k=j-8
      read (2,rec=k)  aa1(i-1),bb1(i-1),cc1(i-1),dd1(i-1),ee1(i-1)
   65 i=i+2
      read(2,rec=102) aa1(9),bb1(9),cc1(9),dd1(9),ee1(9)
      read(2,rec=160) aa1(10),bb1(10),cc1(10),dd1(10),ee1(10)
      inquire(2,nextrec=v2)
      aaa=0
      b1=0.0
      c1=(0.0,0.0)
      d1=0.0d0
      do  70 i=1,10
      aaa=aaa+aa1(i)
      b1=b1+bb1(i)
      c1=c1+cc1(i)
   70 d1=d1+dd1(i)
      k=0
      do 71 i=1,10
      if (ee1(i))  k=k+1
   71 continue
      x= k*aaa+(b1+2*(0.0,1.0)*c1)-d1
      ans=8219.0
      diff=x-ans
      if (abs(diff)-1.0e-5*ans)  72,73,73
   72 write (6,1400) item,ino,x,ans
 1400 format (1h0,15x,1h(,i2,1h-,i2,1h),13x,7h*ok*   ,20x,f9.2,20x,3hx=
     /       ,f9.2 /)
      go to 75
   73 write(6,1500) item,ino,x,ans,k,aaa,b1,c1,d1,aa1,bb1,cc1,dd1,ee1
 1500 format (1h0,15x,1h(,i2,1h-,i2,1h),13x,7h*error*,20x,f9.2,20x,3hx=
     /       ,e14.7 // 43x,2hk=,i6,2h, ,4haaa=,i6,2h, ,3hb1=,e14.7,2h, ,
     /        4hc1=(,e14.7,1h,,e14.7,1h) / 43x,3hd1=,d14.7//43x,4haa1=,
     /        5i14 /
     /        43x,4hbb1=,5(e14.7,1x)/43x,4hcc1=,2(1h(,e14.7,1h,,e14.7,
     / 1h),1x)/ 4(47x,2(1h(,e14.7,1h,,e14.7,1h),1x)/),43x,4hdd1=,5(e14.7
     /,1x)/47x,5(e14.7,1x)/43x,4hee1=,10l3 / )
   75 ino=4
      do 76 i=1,10
   76 c2(i)=(0.0,1.0)*i
      n=0
      a1=1
      b1=1.0
      c1=(1.0,0.0)
      d1=1.d0
      v3=1
      do  80  i=1,5,10
          do 80 j=1,7,3
          a1=2+n
          call sub01 (a1,b1,c1,d1,c2)
          n=a1-1
          b1=b2(1)
          b2(3)=2.0
          b2(4)=-2.0+b1
          v3=i*j
   80 continue
      read(3,rec=1,fmt=123)  aa1(1),bb1(1),cc1(1),dd1(1),cc1(3)
      inquire(3,nextrec=v3)
      read(3,rec=v3,fmt=880) (c2(i),i=1,5)
      read(3,rec=4,fmt=123) aa1(2),bb1(2),cc1(2),dd1(2),cc1(4)
      inquire(3,nextrec=v3)
      read (3,rec=v3,fmt=880) (c2(i),i=6,10)
      inquire(3,nextrec=v3)
  123 format(2a4,2a4,a8,2a4)
  880 format (10a4)
      b1=aa1(1)+bb1(1)+cc1(1)+dd1(1)+cc1(3)+aa1(2)+bb1(2)+cc1(2)+dd1(2)
     +   +cc1(4)
      data  b3/'   4','   2','.0  ',' 1.0','   0','.0  ',' 1.0','   2',
     /         '.0  ',' 0.0','   6','   3','.0  ',' 1.0','   0','.0  ',
     /         ' 1.0','   2','.0  ',' 1.0'/
      ans=23.0
      diff=b1-ans
      if (abs(diff)-1.0e-5*ans)  81,83,83
   81 do 82 i=1,20
      write(cmp(i),84) b2(i)
      if (b3(i).ne.cmp(i))  go to 83
   84 format(a4)
   82 continue
      write (6,1600) item,ino,b1,ans
      go to 90
 1600 format (1h0,15x,1h(,i2,1h-,i2,1h),13x,7h*ok*   ,20x,f9.2,20x,3hb1=
     /       ,f9.2 / )
   83 write (6,1700) item,ino,b1,ans,(b3(i),i=1,20),(b4(i),i=1,20)
      go to 90
 1700 format (1h0,15x,1h(,i2,1h-,i2,1h),13x,7h*error*,20x,f9.2,20x,3hb1=
     /       ,e14.7 / 43x,3hb3=,20a4 / 43x,3hb4=,20a4 / )
   90 ino=5
      v1=3
      call sub02 (a2,3,v1)
      ians=237
      if (v1.eq.ians) go to 91
      write (6,1800) item,ino,v1,ians,(a2(i),i=1,3)
      go to 95
   91 write (6,1900) item,ino,v1,ians
 1800 format (1h0,15x,1h(,i2,1h-,i2,1h),13x,7h*error*,20x,i6,20x,3hv1=,
     /         i6,2h, ,3ha2=,3i7 / )
 1900 format (1h0,15x,1h(,i2,1h-,i2,1h),13x,7h*ok*   ,20x,i6,20x,3hv1=,
     /        i6/)
   95 ino= 6
      u1=1
      do 96 i=1,100,50
          do 96  j=1,25,20
          write (u1,rec=i,fmt=2000)
          u1=3
          k=i+j
          write (u3,rec=k,fmt=2000)
          read  (u1,rec=k,fmt=2100) u2,v1
          k=i+j+1+v1
   96     write (u2,rec=k,fmt=2000)
 2000 format (16h    1abc 123.123 // 6h  9abc )
 2100 format ( 8x,i2 // i3)
      read (1,rec=82,fmt=2100) i,j
      inquire(1,nextrec=v1)
      v1=i+j+k+v1
      ians=177
      if (v1.eq.ians) go to 97
      write (6,2200) item,ino,v1,ians,u2,k
 2200 format (1h0,15x,1h(,i2,1h-,i2,1h),13x,7h*error*,20x,i6,20x,3hv1=,
     /        i6,3hu2=,i6,3hk= ,i5 /)
      go to 200
   97 write (6,1900) item,ino,v1,ians
  200 write (6,210)
  210 format (1h0 / 6x,36h*fortran*      ff11104        exit    )
      stop
      end
      subroutine sub01 (a1,b1,c1,d1,c2)
      integer            a1,  v1,v2,v3
      real               b1
      complex            c1,c2(10)
      double precision   d1
      common             v1,v2,v3
      write (3,rec=v3,fmt=123) a1,b1,c1,d1,c2(2)
      inquire(3,nextrec=v3)
  123 format(2a4,2a4,a8,2a4)
      write (3,rec=v3,fmt=100) a1,b1,c1,d1,c2(2)
      a1=a1+1
      c2(1)=b1+1.0
  100 format (i4,f6.1,f6.1,f6.1,f6.1,f6.1,f6.1,10habcdefghij )
      return
      end
      subroutine sub02 (p1,p2,p3)
      integer        p1,p2,p3
      dimension      p1(p2)
      n=0
      do  5 i=1,p2
          do  4  j=1,p2
          p1(j)=p3*j
    4     p3=5
      p1(i)=p1(i)*p1(i)
      p3=2
    5 continue
      do 10 i=1,p2
   10 n=n+p1(i)
      p3=n
      return
      end
