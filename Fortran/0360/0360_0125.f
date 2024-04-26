      integer r4,r8
      n = 0
      n = n + r4()
      n = n + r8()
      if (n.eq.0) then
         write(6,*) "ok"
      endif
      end

      integer function r4()
      real aa(10)/1,2,3,4,5,6,0,0,0,0/
      complex*8 c(10)/1,2,3,4,5,6,7,8,9,10/,xt
      XT=0
      DO 48 J=1,10
         IF(aa(J).eq.0) then
            XT=XT-c(j)
         else
            XT=XT+c(j)
         endif
 48   continue
      if (xt.ne.cmplx(-13,0)) then
         write(6,*) xt
         r4 = 1
      else
         r4 = 0
      endif
      return
      end


      integer function r8()
      real*8 aa(10)/1,2,3,4,5,6,0,0,0,0/
      complex*16 c(10)/1,2,3,4,5,6,7,8,9,10/,xt
      XT=0
      DO 48 J=1,10
         IF(aa(J).eq.0) then
            XT=XT-c(j)
         else
            XT=XT+c(j)
         endif
 48   continue
      if (xt.ne.cmplx(-13,0)) then
         write(6,*) xt
         r8 = 1
      else
         r8 = 0
      endif
      return
      end


