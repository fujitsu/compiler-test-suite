
      type tag
        real*16     r16(10,10)
        real*8      r8(10,10)
        real*4      r4(10,10)
      end type
      type (tag) ::t

      real*16,parameter ::r16=epsilon(t%r16(shape(t%r16),1))
      real*8, parameter ::r8 =epsilon(t%r8 (shape(t%r8 ),1))
      real*4 ,parameter ::r4 =epsilon(t%r4 (shape(t%r4 ),1))
      
      call checkr16(r16 , epsilon(t%r16(shape(t%r16),1)) )
      call checkr8 (r8  , epsilon(t%r8 (shape(t%r8 ),1)) )
      call checkr4 (r4  , epsilon(t%r4 (shape(t%r4 ),1)) )
      print *,'*** ok ***'
      end

      subroutine checkr16 (r ,tr)
      real*16 r,tr
      if (r.ne.tr)  then
        print *,'??? ng ???'
        stop 1
      endif
      end
      subroutine checkr8  (r ,tr)
      real*8  r,tr
      if (r.ne.tr)  then
        print *,'??? ng ???'
        stop 2
      endif
      end
      subroutine checkr4  (r ,tr)
      real*4  r,tr
      if (r.ne.tr)  then
        print *,'??? ng ???'
        stop 3
      endif
      end
