      integer r4,r8
      n = 0
      n = n + r4()
      n = n + r8()
      if (n .eq. 0) then
         write(6,*) "ok"
      endif
      end

      integer function r4()
      real aa(10)/1,2,3,4,5,6,0,0,0,0/
      complex*8 xt
      XT=0
      DO 48 J=1,10
         IF(aa(J).eq.0) then
            XT=XT-1
         else
            XT=XT+3
         endif
 48   continue

      if (xt .ne. 14.0) then
         write(6,*) xt
         r4 = 1
      else
         r4 = 0
      endif
      return
      end

      integer function r8()
      real*8 aa(10)/1,2,3,4,5,6,0,0,0,0/
      complex*16 xt
      XT=0
      DO 48 J=1,10
         IF(aa(J).eq.0) then
            XT=XT-1
         else
            XT=XT+3
         endif
 48   continue
      if (xt .ne. 14.0) then
         write(6,*) xt
         r8 = 1
      else
         r8 = 0
      endif
      return
      end


