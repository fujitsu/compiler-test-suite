
      integer*1,parameter ::i1a(5)=z'7f'
      integer*2,parameter ::i2a(5)=z'7fff'
      integer*4,parameter ::i4a(5)=z'7fffffff'
      integer*8,parameter ::i8a(5)=z'7fffffffffffffff'
      integer*1,parameter ::i1b(5)=z'80'
      integer*2,parameter ::i2b(5)=z'8000'
      integer*4,parameter ::i4b(5)=z'f8000000'
      integer*8,parameter ::i8b(5)=z'f800000000000000'
      integer*1,parameter ::one=1
      integer*2,parameter ::two=2
      integer*8,parameter ::eight=8
      
      integer*1,parameter ::i1w(5)=int(i1a,kind=one)
      integer*1,parameter ::i1x(5)=int(i2a,kind=one)
      integer*1,parameter ::i1y(5)=int(i4a,kind=one)
      integer*1,parameter ::i1z(5)=int(i8a,kind=one)
      integer*2,parameter ::i2w(5)=int(kind=two,a=i1b)
      integer*2,parameter ::i2x(5)=int(kind=two,a=i2b)
      integer*2,parameter ::i2y(5)=int(kind=two,a=i4b)
      integer*2,parameter ::i2z(5)=int(kind=two,a=i8b)
      integer*4,parameter ::i4w(5)=int(i1a)
      integer*4,parameter ::i4x(5)=int(i2a)
      integer*4,parameter ::i4y(5)=int(i4a)
      integer*4,parameter ::i4z(5)=int(i8a)
      integer*8,parameter ::i8w(5)=int(i1b,eight)
      integer*8,parameter ::i8x(5)=int(i2b,eight)
      integer*8,parameter ::i8y(5)=int(i4b,eight)
      integer*8,parameter ::i8z(5)=int(i8b,eight)

      do i=1,5
        call check1(i1w(i),int(i1a(i),kind=one))
        call check1(i1x(i),int(i2a(i),kind=one))
        call check1(i1y(i),int(i4a(i),kind=one))
        call check1(i1z(i),int(i8a(i),kind=one))
        call check2(i2w(i),int(kind=two,a=i1b(i)))
        call check2(i2x(i),int(kind=two,a=i2b(i)))
        call check2(i2y(i),int(kind=two,a=i4b(i)))
        call check2(i2z(i),int(kind=two,a=i8b(i)))
        call check4(i4w(i),int(i1a(i)))
        call check4(i4x(i),int(i2a(i)))
        call check4(i4y(i),int(i4a(i)))
        call check4(i4z(i),int(i8a(i)))
        call check8(i8w(i),int(i1b(i),eight))
        call check8(i8x(i),int(i2b(i),eight))
        call check8(i8y(i),int(i4b(i),eight))
        call check8(i8z(i),int(i8b(i),eight))
      enddo
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
