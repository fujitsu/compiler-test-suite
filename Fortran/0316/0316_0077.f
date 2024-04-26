
      integer*1,dimension(8) :: i1a,i1x,i1p,i1l
      integer*2,dimension(16):: i2a,i2x,i2p,i2l
      integer*4,dimension(32):: i4a,i4x,i4p,i4l
      integer*8,dimension(64):: i8a,i8x,i8p,i8l
      parameter (i1x=z'fe')
      parameter (i2x=z'fedc')
      parameter (i4x=z'fedcba98')
      parameter (i8x=z'fedcba9876543210')
      parameter (i1p=(/0,1,2,3,4,5,6,7/))
      parameter (i2p=(/0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15/))
      parameter (i4p=(/0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,
     + 19,20,21,22,23,24,25,26,27,28,29,30,31/))
      parameter (i8p=(/0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,
     + 19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,
     + 40,41,42,43,44,45,45,47,48,49,50,51,52,53,54,55,56,57,58,59,60,
     + 61,62,63/))
      parameter (i1l=(/8,7,6,5,4,3,2,1/))
      parameter (i2l=(/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/))
      parameter (i4l=(/32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,
     + 16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/))
      parameter (i8l=(/64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,
     +  48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,
     +  27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,
     +  5,4,3,2,1/))
      parameter(i1a=ibits(i1x,i1p,i1l))
      parameter(i2a=ibits(i2x,i2p,i2l))
      parameter(i4a=ibits(i4x,i4p,i4l))
      parameter(i8a=ibits(i8x,i8p,i8l))

      do i=1,8
        call checki1(i1a(i),ibits(i1x,i1p(i),i1l(i)))
      enddo
      do i=1,16
        call checki2(i2a(i),ibits(i2x,i2p(i),i2l(i)))
      enddo
      do i=1,32
        call checki4(i4a(i),ibits(i4x,i4p(i),i4l(i)))
      enddo
      do i=1,64
        call checki8(i8a(i),ibits(i8x,i8p(i),i8l(i)))
      enddo
      print *,'*** ok ***'
      end

      subroutine checki1(i1,i1t)
      integer*1 i1,i1t(1)
      if (i1.ne.i1t(1)) then
        print *,i1,i1t
        print *,'??? ng ???'
        stop 1
      endif
      end

      subroutine checki2(i2,i2t)
      integer*2 i2,i2t(1)
      if (i2.ne.i2t(1)) then
        print *,i2,i2t
        print *,'??? ng ???'
        stop 2
      endif
      end

      subroutine checki4(i4,i4t)
      integer*4 i4,i4t(1)
      if (i4.ne.i4t(1)) then
        print *,i4,i4t
        print *,'??? ng ???'
        stop 3
      endif
      end

      subroutine checki8(i8,i8t)
      integer*8 i8,i8t(1)
      if (i8.ne.i8t(1)) then
        print *,i8,i8t
        print *,'??? ng ???'
        stop 4
      endif
      end
