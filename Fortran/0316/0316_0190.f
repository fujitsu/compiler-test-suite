
      integer*1                ::                      i1x,i1p
      integer*2,dimension(2,3) ::i2,j2,                i2x,i2p
      integer*4                ::i4,j4(2,3),k4,l4(2,3),i4x,i4p
      integer*8,dimension(2,3) ::i8,j8,k8,l8,m8,n8,    i8x,i8p
      parameter (i1x=z'ff',               i1p=z'00')
      parameter (i2x=z'ffff',             i2p=z'ffff')
      parameter (i4x=z'00000000',         i4p=z'00000000')
      parameter (i8x=z'0000000000000000', i8p=z'ffffffffffffffff')

      parameter(i2=iand(I=i1x,J=i2p))
      parameter(i4=iand(i1x,J=i4p))
      parameter(i8=iand(J=i8p,I=i1x))
      parameter(j2=iand(i2x,i1p))
      parameter(j4=iand(i2x,i4p))
      parameter(j8=iand(i2x,i8p))
      parameter(k4=iand(i4x,i1p))
      parameter(l4=iand(i4x,i2p))
      parameter(k8=iand(i4x,i8p))
      parameter(l8=iand(i8x,i1p))
      parameter(m8=iand(i8x,i2p))
      parameter(n8=iand(i8x,i4p))

      call checki4(i4,iand(i1x,J=i4p))
      call checki4(k4,iand(i4x,i1p))
      do j=1,3
        do i=1,2
          call checki4(j4(i,j),iand(i2x(i,j),i4p))
          call checki4(l4(i,j),iand(i4x,     i2p(i,j)))
          call checki2(i2(i,j),iand(I=i1x, J=i2p(i,j)))
          call checki2(j2(i,j),iand(i2x(i,j),i1p))
          call checki8(i8(i,j),iand(J=i8p(i,j),I=i1x))
          call checki8(j8(i,j),iand(i2x(i,j),i8p(i,j)))
          call checki8(k8(i,j),iand(i4x,     i8p(i,j)))
          call checki8(l8(i,j),iand(i8x(i,j),i1p))
          call checki8(m8(i,j),iand(i8x(i,j),i2p(i,j)))
          call checki8(n8(i,j),iand(i8x(i,j),i4p))
       enddo
      enddo
      print *,'*** ok ***'
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
