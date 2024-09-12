      real*8 brmt(3,3),rcmt(3,3),dface(3),dline(2,3)
      data   brmt,rcmt,dface,dline/9*1.,9*2.,3*4.,6*5./
      call distbs(brmt, rcmt, dface, dline)
      stop
      end

      subroutine distbs(brmt, rcmt, dface, dline)
      implicit real*8 (a-h,o-z)
      dimension brmt(3,3),rcmt(3,3), dface(3), dline(2,3)
      do 1 i = 1, 3
      do 1 j = 1, 3
      prod = 0.d0
      do 3 k = 1, 3
      prod = prod + brmt(k,i)*rcmt(k,j)
 3    continue
      write(6,*) ' i = ', i, ' j = ', j, ' prod = ', prod
 1    continue
      do 11 i = 1, 3
      p = 0.d0
      d = 0.d0
      do 12 j = 1, 3
      p = p + brmt(j,i)*rcmt(j,i)
      d = d + rcmt(j,i)*rcmt(j,i)
 12   continue
      dface(i) = p/dsqrt(d)
 11   continue
      write(6,9001) (dface(j),j = 1, 3)
 9001 format(' (dface(1-3)) = (',3f12.4,')')
      do 21 i = 1, 3
      d = 0.d0
      do 32 k = 1, 3
      d = d + brmt(k,i)*brmt(k,i)
 32   continue
      do 22 j = 1, 2
      jj = i+j
      jj = mod(jj,3)+1
      p = 0.d0
      do 23 k = 1, 3
      p = p + brmt(k,jj)*brmt(k,i)
 23   continue
      if(i.eq.2) then
         dline(3-j,i) = p/d
      else
         dline(j,i) = p/d
      endif
 22   continue
 21   continue
      write(6,9002) ((dline(j,i),j=1,2),i=1,3)
 9002 format(' (dline(1-2,1-3)) = ,',3('(',2f12.4,')'))
      return
      end
