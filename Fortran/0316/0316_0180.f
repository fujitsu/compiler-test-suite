
      integer*1                ::                        i1x,i1y
      integer*2,dimension(2,3) ::i2,j2,                  i2x,i2y
      integer*4                ::i4,j4(2,3),k4,l4(2,3),  i4x,i4y
      integer*8,dimension(2,3) ::i8,j8,k8,l8,m8,n8,o8,p8,i8x,i8y,i8z
      parameter (i1x=z'7f',               i1y=z'80')
      parameter (i2x=z'7fff',             i2y=z'7fff')
      parameter (i4x=z'80000000',         i4y=z'80000000')
      parameter (i8x=z'8000000000000000', i8y=z'7fffffffffffffff',
     +i8z=1)

      parameter(i2=mod(A=i1x,P=i2y))
      parameter(i4=mod(i1x,P=i4x))
      parameter(i8=mod(P=i8y,A=i1x))
      parameter(j2=mod(i2x,i1y))
      parameter(j4=mod(i2x,i4y))
      parameter(j8=mod(i2x,i8y))
      parameter(k4=mod(i4x,i1y))
      parameter(l4=mod(i4x,i2y))
      parameter(k8=mod(i4x,i8y))
      parameter(l8=mod(i8x,i1y))
      parameter(m8=mod(i8x,i2y))
      parameter(n8=mod(i8x,i4y))
      parameter(o8=mod(i2x,i8z))
      parameter(p8=mod(i4x,i8z))

      call checki4(i4,mod(i1x,P=i4x))
      call checki4(k4,mod(i4x,i1y))
      do j=1,3
        do i=1,2
          call checki4(j4(i,j),mod(i2x(i,j),i4y))
          call checki4(l4(i,j),mod(i4x,     i2y(i,j)))
          call checki2(i2(i,j),mod(A=i1x, P=i2y(i,j)))
          call checki2(j2(i,j),mod(i2x(i,j),i1y))
          call checki8(i8(i,j),mod(P=i8y(i,j),A=i1x))
          call checki8(j8(i,j),mod(i2x(i,j),i8y(i,j)))
          call checki8(k8(i,j),mod(i4x,     i8y(i,j)))
          call checki8(l8(i,j),mod(i8x(i,j),i1y))
          call checki8(m8(i,j),mod(i8x(i,j),i2y(i,j)))
          call checki8(n8(i,j),mod(i8x(i,j),i4y))
          call checki8(o8(i,j),mod(i2x(i,j),i8z(i,j)))
          call checki8(p8(i,j),mod(i4x,     i8z(i,j)))
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
