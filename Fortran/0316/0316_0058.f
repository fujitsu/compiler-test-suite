
      integer*8,parameter ::i8=1
      integer*1   i1a, i1b
      integer*2   i2a, i2b
      integer*4   i4a, i4b
      real*4      r4a, r4b
      real*8      r8a, r8b
      real*16     r16a,r16b
      complex*8   c8a, c8b
      complex*16  c16a,c16b
      complex*32  c32a,c32b

      data i1a  /i8/
      data i2a  /i8/
      data i4a  /i8/
      data r4a  /i8/
      data r8a  /i8/
      data r16a /i8/
      data c8a  /i8/
      data c16a /i8/
      data c32a /i8/

      i1b  =i8
      i2b  =i8
      i4b  =i8
      r4b  =i8
      r8b  =i8
      r16b =i8
      c8b  =i8
      c16b =i8
      c32b =i8

      call checki1 (i1a, i1b)
      call checki2 (i2a, i2b)
      call checki4 (i4a, i4b)
      call checkr4 (r4a, r4b)
      call checkr8 (r8a, r8b)
      call checkr16(r16a,r16b)
      call checkr4 (imag(c8a), imag(c8b))
      call checkr8 (imag(c16a),imag(c16b))
      call checkr16(imag(c32a),imag(c32b))
      print *,'** OK **'
      end

      subroutine checki1(i1,i1t)
      integer*1 i1,i1t
      if (i1.ne.i1t) then
        print *,i1,i1t
        print *,'??? ng ???'
        stop 1
      endif
      end

      subroutine checki2(i2,i2t)
      integer*2 i2,i2t
      if (i2.ne.i2t) then
        print *,i2,i2t
        print *,'??? ng ???'
        stop 2
      endif
      end

      subroutine checki4(i4,i4t)
      integer*4 i4,i4t
      if (i4.ne.i4t) then
        print *,i4,i4t
        print *,'??? ng ???'
        stop 3
      endif
      end

      subroutine checki8(i8,i8t)
      integer*8 i8,i8t
      if (i8.ne.i8t) then
        print *,i8,i8t
        print *,'??? ng ???'
        stop 4
      endif
      end

      subroutine checkr4(r4,r4t)
      real*4 r4,r4t
      if (r4.ne.r4t) then
        print *,r4,r4t
        print *,'??? ng ???'
        stop 5
      endif
      end

      subroutine checkr8(r8,r8t)
      real*8 r8,r8t
      if (r8.ne.r8t) then
        print *,r8,r8t
        print *,'??? ng ???'
        stop 6
      endif
      end

      subroutine checkr16(r16,r16t)
      real*16 r16,r16t
      if (r16.ne.r16t) then
        print *,r16,r16t
        print *,'??? ng ???'
        stop 7
      endif
      end
