      real sub1,sub2
      n = sub1()
      n = n + sub2()
      if (n.eq.0) then
         write(6,*) "ok"
      endif
      end

      function sub1()
      real aa(10)/10*0/
      complex*16 c(10)/1,2,3,4,5,6,7,8,9,10/
      complex*16 d(10)/11,12,13,14,15,16,17,18,19,20/
      complex*16 xt,x(10)/10*0/,xxx/(4.,2.)/


      do i=1,10
         d(i) = cmplx(i,i+20)
      enddo
      XT=0
      DO 48 i=1,2
         IF(aa(i).eq.0) then
            XT=XT-d(i)
         else
            XT=XT+(4.,2.)
         endif
 48   continue
      if (xt .eq. (-3.,-43.)) then
         sub1 = 0
      else
         write(6,*) xt
         sub1 = 1
      endif
      return
      end

      function sub2()
      real aa(10)/10*0/
      complex*16 c(10)/1,2,3,4,5,6,7,8,9,10/
      complex*16 d(10)/11,12,13,14,15,16,17,18,19,20/
      complex*16 xt,x(10)/10*0/,xxx/(4.,2.)/


      do i=1,10
         d(i) = cmplx(i,i+20)
      enddo
      XT=0
      DO 48 i=1,2
         IF(aa(i).eq.0) then
            XT=XT+(4.,2.)
         else
            XT=XT-d(i)
         endif
 48   continue
      if (xt .eq. (8.,4.)) then
         sub2 = 0
      else
         write(6,*) xt
         sub2 = 1
      endif
      return
      end
