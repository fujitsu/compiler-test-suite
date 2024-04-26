
      integer*1,parameter ::i1a=z'7f'
      integer*2,parameter ::i2a=z'7fff'
      integer*4,parameter ::i4a=z'7fffffff'
      integer*8,parameter ::i8a=z'7fffffffffffffff'
      integer*1,parameter ::i1b=z'80'
      integer*2,parameter ::i2b=z'8000'
      integer*4,parameter ::i4b=z'f8000000'
      integer*8,parameter ::i8b=z'f800000000000000'
      integer*1,parameter ::one=1
      integer*2,parameter ::two=2
      integer*8,parameter ::eight=8
      
      integer*1,parameter ::i1w=int(i1a,kind=one)
      integer*1,parameter ::i1x=int(i2a,kind=one)
      integer*1,parameter ::i1y=int(i4a,kind=one)
      integer*1,parameter ::i1z=int(i8a,kind=one)
      integer*2,parameter ::i2w=int(kind=two,a=i1b)
      integer*2,parameter ::i2x=int(kind=two,a=i2b)
      integer*2,parameter ::i2y=int(kind=two,a=i4b)
      integer*2,parameter ::i2z=int(kind=two,a=i8b)
      integer*4,parameter ::i4w=int(i1a)
      integer*4,parameter ::i4x=int(i2a)
      integer*4,parameter ::i4y=int(i4a)
      integer*4,parameter ::i4z=int(i8a)
      integer*8,parameter ::i8w=int(i1b,eight)
      integer*8,parameter ::i8x=int(i2b,eight)
      integer*8,parameter ::i8y=int(i4b,eight)
      integer*8,parameter ::i8z=int(i8b,eight)

      call check1(i1w,int(i1a,kind=one))
      call check1(i1x,int(i2a,kind=one))
      call check1(i1y,int(i4a,kind=one))
      call check1(i1z,int(i8a,kind=one))
      call check2(i2w,int(kind=two,a=i1b))
      call check2(i2x,int(kind=two,a=i2b))
      call check2(i2y,int(kind=two,a=i4b))
      call check2(i2z,int(kind=two,a=i8b))
      call check4(i4w,int(i1a))
      call check4(i4x,int(i2a))
      call check4(i4y,int(i4a))
      call check4(i4z,int(i8a))
      call check8(i8w,int(i1b,eight))
      call check8(i8x,int(i2b,eight))
      call check8(i8y,int(i4b,eight))
      call check8(i8z,int(i8b,eight))
      print *,'*** ok ***'
      end

      subroutine check1(i1,i1t)
      integer*1 i1,i1t
      if (i1.ne.i1t) then
        print *,'??? ng ???'
        stop 1
      endif
      end

      subroutine check2(i2,i2t)
      integer*2 i2,i2t
      if (i2.ne.i2t) then
        print *,'??? ng ???'
        stop 2
      endif
      end

      subroutine check4(i4,i4t)
      integer*4 i4,i4t
      if (i4.ne.i4t) then
        print *,'??? ng ???'
        stop 3
      endif
      end

      subroutine check8(i8,i8t)
      integer*8 i8,i8t
      if (i8.ne.i8t) then
        print *,'??? ng ???'
        stop 4
      endif
      end
