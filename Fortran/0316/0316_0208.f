
      integer*1                ::i1(2,3),j1,k1(2,3), i1x,i1p
      integer*2,dimension(2,3) ::i2,j2,k2,           i2x,i2p
      integer*4                ::i4,j4(2,3),k4(2,3), i4x,i4p
      integer*8,dimension(2,3) ::i8,j8,k8,           i8x,i8p
      parameter (i1x=z'ff',               i1p=1)
      parameter (i2x=z'ffff',             i2p=-1)
      parameter (i4x=z'00000001',         i4p=1)
      parameter (i8x=z'0000000000000001', i8p=-1)

      parameter(i1=ishft(I=i1x,SHIFT=i2p))
      parameter(j1=ishft(i1x,SHIFT=i4p))
      parameter(k1=ishft(SHIFT=i8p,I=i1x))
      parameter(i2=ishft(i2x,i1p))
      parameter(j2=ishft(i2x,i4p))
      parameter(k2=ishft(i2x,i8p))
      parameter(i4=ishft(i4x,i1p))
      parameter(j4=ishft(i4x,i2p))
      parameter(k4=ishft(i4x,i8p))
      parameter(i8=ishft(i8x,i1p))
      parameter(j8=ishft(i8x,i2p))
      parameter(k8=ishft(i8x,i4p))

      call checki1(j1,ishft(i1x,SHIFT=i4p))
      call checki4(i4,ishft(i4x,i1p))
      do j=1,3
        do i=1,2
          call checki1(i1(i,j),ishft(I=i1x,SHIFT=i2p(i,j)))
          call checki1(k1(i,j),ishft(SHIFT=i8p(i,j),I=i1x)) 
          call checki2(i2(i,j),ishft(i2x(i,j),i1p))
          call checki2(j2(i,j),ishft(i2x(i,j),i4p))
          call checki2(k2(i,j),ishft(i2x(i,j),i8p(i,j)))
          call checki4(j4(i,j),ishft(i4x,     i2p(i,j)))
          call checki4(k4(i,j),ishft(i4x,     i8p(i,j)))
          call checki8(i8(i,j),ishft(i8x(i,j),i1p))
          call checki8(j8(i,j),ishft(i8x(i,j),i2p(i,j)))
          call checki8(k8(i,j),ishft(i8x(i,j),i4p))
       enddo
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
        write(6,'(z16,x,z16)') i8,i8t
        print *,'??? ng ???'
        stop 4
      endif
      end
