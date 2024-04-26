
      integer*1                ::                i1x,i1y
      integer*2,dimension(2,3) ::i2,j2,          i2x,i2y
      integer*2                ::                i2z
      integer*4                ::i4,j4,n4(2,3),  i4x,i4y
      integer*8,dimension(2,3) ::i8,j8,n8,m8,    i8x,i8y
      parameter (i1x=10, i1y=1)
      parameter (i2x=10, i2y=1, i2z=-1)
      parameter (i4x=10, i4y=1)
      parameter (i8x=10, i8y=1)

      parameter(i4=max(A1=i1x,A2=i4x,A1000000000=i2z))
      parameter(j4=max(i1y,i4x))
      parameter(n4=max(i2x,i4y))
      parameter(i2=max(i2x,i1y,i2z))
      parameter(j2=max(i1x,i2y))
      parameter(i8=min(i2x,i8y,i2z))
      parameter(j8=min(i8x,i2y,i2z))
      parameter(n8=min(i2y,i8y))
      parameter(m8=min(i8x,i2z))

      call checki4(i4,max(A1=i1x,A2=i4x,A1000000000=i2z))
      call checki4(j4,max(i1y,i4x))
      do j=1,3
        do i=1,2
          call checki2(i2(i,j),max(i2x(i,j),i1y,i2z))
          call checki2(j2(i,j),max(i1x,i2y(i,j)))
          call checki4(n4(i,j),max(i2x(i,j),i4y))
          call checki8(i8(i,j),min(i2x(i,j),i8y(i,j),i2z))
          call checki8(j8(i,j),min(i8x(i,j),i2y(i,j),i2z))
          call checki8(n8(i,j),min(i2y(i,j),i8y(i,j)))
          call checki8(m8(i,j),min(i8x(i,j),i2z))
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
        print *,i8,i8t
        print *,'??? ng ???'
        stop 4
      endif
      end
