
      integer*1,dimension(8) :: i1x,i1y
      integer*2,dimension(16):: i2x,i2y
      integer*4,dimension(32):: i4x,i4y
      integer*8,dimension(64):: i8x,i8y
      integer*1,dimension(8) :: i1a
      integer*2,dimension(16):: i2a
      integer*4,dimension(32):: i4a
      integer*8,dimension(64):: i8a
      parameter (i1x=z'ff')
      parameter (i2x=z'ffff')
      parameter (i4x=z'ffffffff')
      parameter (i8x=z'ffffffffffffffff')
      parameter (i1y=(/0,-1,-2,-3,-4,-5,-6,-7/))
      parameter (i2y=(/0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,
     +              -15/))
      parameter (i4y=(/0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,
     +              -15,-16,-17,-18,-19,-20,-21,-22,-23,-24,-25,-26,-27,
     +              -28,-29,-30,-31/))
      parameter (i8y=(/0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,
     +              -15,-16,-17,-18,-19,-20,-21,-22,-23,-24,-25,-26,-27,
     +              -28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,
     +              -41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,
     +              -54,-55,-56,-57,-58,-59,-60,-61,-62,-63/))

      parameter(i1a=ishft(i1x,i1y))
      parameter(i2a=ishft(i2x,i2y))
      parameter(i4a=ishft(i4x,i4y))
      parameter(i8a=ishft(i8x,i8y))

      do i=1,8
        call checki1(i1a(i),ishft(i1x(i),i1y(i)))
      enddo
      do i=1,16
        call checki2(i2a(i),ishft(i2x(i),i2y(i)))
      enddo
      do i=1,32
        call checki4(i4a(i),ishft(i4x(i),i4y(i)))
      enddo
      do i=1,64
        call checki8(i8a(i),ishft(i8x(i),i8y(i)))
      enddo
      print *,'*** ok ***'
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
