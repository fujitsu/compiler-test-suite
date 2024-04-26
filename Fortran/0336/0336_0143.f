      program main
      integer*4 a,b
      equivalence (a,b)
      integer*4 ar(10),br(10),s,i
      s=0
      call sub( ar , br )
      do i=3,10
         a = i*10
         if ( ar(i) .eq. 0 ) then
            a = ar(i)
         else
            br(i) = b
            a = ar(i)*br(i-2)
         endif
         s = s + br(i)*a*b
      enddo
      if ( s .eq. 131311830 ) then
         write(6,*) 'OK'
      else
         write(6,*) 'NG'
         write(6,*) 'total=',s
      endif
      end

      subroutine sub(a,b)
      integer a,b
      dimension a(10),b(10)
      do i=1,10
         a(i)=i
         b(i)=i
      enddo
      return
      end
