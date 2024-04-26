
      integer*1 i1,j1,m1
      integer*2 i2,j2,m2
      integer*4 i4,j4,m4
      integer*8 i8,j8,m8
      integer*8 k8,l8,n8
 
      parameter (i1=0  ,              j1=0)
      parameter (i2=z'ffff',            j2=0)
      parameter (i4=z'ffffffff',        j4=z'ffffffff')
      parameter (i8=z'00000000ffffffff',j8=z'ffffffff00000000')
      parameter (k8=z'00000000ffffffff',l8=z'00000000ffffffff')

      parameter(m1=and(i1,j1))
      parameter(m2=and(i2,j2))
      parameter(m4=and(i4,j4))
      parameter(m8=and(i8,j8))
      parameter(n8=and(k8,l8))

      call checki1(m1,and(i1,j1))
      call checki2(m2,and(i2,j2))
      call checki4(m4,and(i4,j4))
      call checki8(m8,and(i8,j8))
      call checki8(n8,and(k8,l8))
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
