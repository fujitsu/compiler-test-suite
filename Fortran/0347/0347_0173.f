      program main
      real*8   d010(30),d020(30),d030(30),d040(30),
     *         d110(30,30),d120(30,30),d130(30,30)
      integer*2  hdint,hdtrm,hdinc
      data     it1/1/,it2/2/,it3/3/,it4/10/,it5/15/,it6/30/
      data     hdint/1/,hdtrm/30/,hdinc/1/
      data     rdop/30/
      data     d010/30*1.0d0/,d020/30*2.0d0/,d030/30*4.0d0/
      data     d040/30*2.0d0/
      do 15 j=1,it6
       do 15 k=1,hdtrm
         d110(j,k) = 1.0d0
         d120(j,k) = 2.0d0
         d130(j,k) = 3.0d0
 15   continue

      do 40 i=3,20
        d010(i+1) = d110(i+2,10) + d020(3)
        d040(i+10) = d120(i,it6) * d130(i,i)
        d020(3+i) = d030(i) + d010(3)
        d110(5,i+3) = d040(10) / d020(i+3-1)
 40   continue
      write(6,*) (d010(k),k=3,20)
      write(6,*) (d020(k),k=6,23)
      write(6,*) (d040(k),k=13,30)
      write(6,*) ((d110(i,j),i=4,5),j=6,23)
      stop
      end
