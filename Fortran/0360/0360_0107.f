      complex*16  cd1(10),cdx(10),res(4)
      data cd1/10*(-1.d0,2.d0)/
      data cdx/10*(2.d0,-3.d0)/
      data res/(-1.000000000000,2.00000000000),
     +     (-5050.000000000000,-50500.00000000000),
     +     (5050.000000000000,50500.00000000000),
     + (-50.00000000000000,-500.0000000000000)/
      call sub(cd1,cdx)
      if (isub(cd1(1),res(1)).eq.1) stop 1
      call sub2(cd1,cdx)
      if (isub(cd1(2),res(1)).eq.1) stop 2
      call sub3(cd1,cdx)
      if (isub(cd1(3),res(1)).eq.1) stop 3
      call sub4(cd1,cdx)
      if (isub(cd1(4),res(1)).eq.1) stop 4
      write(6,*) ' ok '
      end

      subroutine sub(cd1,cdx)
      complex*16 cd1(10),cdx(10)
      do 60 i=1,10
         cdx(1)=cdx(1)+cd1(i)
 60   continue
      return
      end

      subroutine sub2(cd1,cdx)
      complex*16 cd1(10),cdx(10)
      do 60 i=1,10
         cdx(2)=cdx(2)-cd1(i)
 60   continue
      return
      end

      subroutine sub3(cd1,cdx)
      complex*16 cd1(10),cdx(10)
      do 60 i=1,10
         cdx(3)=cd1(i) + cdx(3)
 60   continue
      return
      end

      subroutine sub4(cd1,cdx)
      complex*16 cd1(10),cdx(10)
      do 60 i=1,10
         cdx(4)=-cd1(i) + cdx(4)
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
