
      integer*1 i1a
      integer*2 i2a
      integer*4 i4a
      integer*8 i8a
      parameter (i1a=z'61')
      parameter (i2a=z'0041')
      parameter (i4a=z'00000030')
      parameter (i8a=z'000000000000007e')

      character,parameter ::c1=achar(i1a)
      character,parameter ::c2=achar(i2a)
      character,parameter ::c3=achar(i4a)
      character,parameter ::c4=achar(i8a)
  
      call check(c1,achar(i1a))
      call check(c2,achar(i2a))
      call check(c3,achar(i4a))
      call check(c4,achar(i8a))
      print *,'*** ok ***'
      end

      subroutine check(c1,c1t)
      character c1,c1t
      if (c1.ne.c1t) then
        print *,'??? ng ???'
        stop 1
      endif
      end
