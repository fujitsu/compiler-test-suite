      complex*16  cd1(10),cdx(10),cdy(10),res(6)
      data cd1/10*(-1.d0,2.d0)/
      data cdx/10*(2.d0,-3.d0)/
      data cdy/10*(-8.d0,5.d0)/
      data res/(-18.0,-213.0),
     +     (2.0,-3.0),
     +     (2.0,-3.0),
     + (2.0,-3.0),
     + (2.0,-3.0),
     + (2.0,-3.0)/

      call sub(cd1,cdx,cdy)
      if (isub(cdx(1),res(1)).eq.1) stop 1
      call sub2(cd1,cdx,cdy)
      if (isub(cdx(2),res(2)).eq.1) stop 2
      call sub3(cd1,cdx,cdy)
      if (isub(cdx(3),res(3)).eq.1) stop 3
      call sub4(cd1,cdx,cdy)
      if (isub(cdx(4),res(4)).eq.1) stop 4
      call sub5(cd1,cdx,cdy)
      if (isub(cdx(5),res(5)).eq.1) stop 5
      call sub6(cd1,cdx,cdy)
      if (isub(cdx(6),res(6)).eq.1) stop 6
      write(6,*) ' ok '
      end

      subroutine sub(cd1,cdx,cdy)
      complex*16 cd1(10),cdx(10),cdy(10)
      do 60 i=1,10
         cdx(1)=cdx(1)+cd1(i)*cdy(10)
 60   continue
      return
      end

      subroutine sub2(cd1,cdx,cdy)
      complex*16 cd1(10),cdx(10),cdy(10)
      do 60 i=1,10
         cdx(1)=cdx(1)-cd1(i)*cdy(i)
 60   continue
      return
      end

      subroutine sub3(cd1,cdx,cdy)
      complex*16 cd1(10),cdx(10),cdy(10)
      do 60 i=1,10
         cdx(1)=cd1(i)*cdy(10)+cdx(1)
 60   continue
      return
      end

      subroutine sub4(cd1,cdx,cdy)
      complex*16 cd1(10),cdx(10),cdy(10)
      do 60 i=1,10
         cdx(1)=-cd1(i)*cdy(i) + cdx(1)
 60   continue
      return
      end

      subroutine sub5(cd1,cdx,cdy)
      complex*16 cd1(10),cdx(10),cdy(10)
      do 60 i=1,10
         cdx(1)=-cdx(1)-cd1(i)*cdy(10)
 60   continue
      return
      end

      subroutine sub6(cd1,cdx,cdy)
      complex*16 cd1(10),cdx(10),cdy(10)
      do 60 i=1,10
         cdx(1)=-cd1(i)*cdy(i)-cdx(1)
 60   continue
      return
      end

      integer function isub(r1,r2)
      complex*16 r1,r2
      isub = 0

      if (r1.ne.r2) then
         write(6,*) "calc = ",r1
         write(6,*) "res  = ",r2
         isub = 1
         return
      endif
      return
      end
