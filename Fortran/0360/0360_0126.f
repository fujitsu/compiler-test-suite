      call r4
      call r8
      write(6,*) "ok"
      end

      subroutine r4
      real aa(10)/1,2,3,4,5,6,0,0,0,0/
      complex*8 c(10)/1,2,3,4,5,6,7,8,9,10/,xt,x(10)/10*0/
      XT=0
      do i=1,10
         DO 48 J=1,10
            IF(aa(J).eq.0) then
               XT=XT-csin(c(i))
            else
               XT=XT+ccos(c(i))
            endif
 48      continue
         x(i) = xt
      enddo
      write(6,*) x
      return
      end

      subroutine r8
      real*8 aa(10)/1,2,3,4,5,6,0,0,0,0/
      complex*16 c(10)/1,2,3,4,5,6,7,8,9,10/,xt,x(10)/10*0/
      XT=0
      do i=1,10
         DO 48 J=1,10
            IF(aa(J).eq.0) then
               XT=XT-cdsin(c(i))
            else
               XT=XT+cdcos(c(i))
            endif
 48      continue
         x(i) = xt
      enddo
      write(6,*) x
      return
      end


