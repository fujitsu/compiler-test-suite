
      integer*1                ::                         i1x,i1p
      integer*2,dimension(2,3) ::i2,j2,                   i2x,i2p
      integer*4                ::i4,j4(2,3),k4,l4(2,3),m4,i4x,i4p
      integer*8,dimension(2,3) ::i8,j8,k8,l8,m8,n8,o8,i8x,i8y,i8p
      parameter (i1x= 8, i1p= 5)
      parameter (i2x= 8, i2p=-5)
      parameter (i4x=-8, i4p= 5)
      parameter (i8x=-8, i8p=-5)
      parameter (i4y=0,  i8y=0 )

      parameter(i2=modulo(A=i1x,P=i2p))
      parameter(i4=modulo(i1x,P=i4p))
      parameter(i8=modulo(P=i8p,A=i1x))
      parameter(j2=modulo(i2x,i1p))
      parameter(j4=modulo(i2x,i4p))
      parameter(j8=modulo(i2x,i8p))
      parameter(k4=modulo(i4x,i1p))
      parameter(l4=modulo(i4x,i2p))
      parameter(m4=modulo(i4y,i1p))
      parameter(k8=modulo(i4x,i8p))
      parameter(l8=modulo(i8x,i1p))
      parameter(m8=modulo(i8x,i2p))
      parameter(n8=modulo(i8x,i4p))
      parameter(o8=modulo(i8y,i8p))

      call checki4(i4,modulo(i1x,P=i4p))
      call checki4(k4,modulo(i4x,i1p))
      call checki4(m4,modulo(i4y,i1p))
      do j=1,3
        do i=1,2
          call checki4(j4(i,j),modulo(i2x(i,j),i4p))
          call checki4(l4(i,j),modulo(i4x,     i2p(i,j)))
          call checki2(i2(i,j),modulo(A=i1x, P=i2p(i,j)))
          call checki2(j2(i,j),modulo(i2x(i,j),i1p))
          call checki8(i8(i,j),modulo(P=i8p(i,j),A=i1x))
          call checki8(j8(i,j),modulo(i2x(i,j),i8p(i,j)))
          call checki8(k8(i,j),modulo(i4x,     i8p(i,j)))
          call checki8(l8(i,j),modulo(i8x(i,j),i1p))
          call checki8(m8(i,j),modulo(i8x(i,j),i2p(i,j)))
          call checki8(n8(i,j),modulo(i8x(i,j),i4p))
          call checki8(o8(i,j),modulo(i8y(i,j),i8p(i,j)))
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
