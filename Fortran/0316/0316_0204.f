
      integer*1,dimension(5):: i1,j1,m1
      integer*2,dimension(5):: i2,j2,m2
      integer*4,dimension(5):: i4,j4,m4
      integer*8,dimension(5):: i8,j8,m8
      integer*8,dimension(5):: k8,l8,n8
 
      parameter (i1=0  ,              j1=0)
      parameter (i2=z'ffff',            j2=0)
      parameter (i4=z'ffffffff',        j4=z'ffffffff')
      parameter (i8=z'00000000ffffffff',j8=z'ffffffff00000000')
      parameter (k8=z'00000000ffffffff',l8=z'00000000ffffffff')

      parameter(m1=xor(i1,j1))
      parameter(m2=xor(i2,j2))
      parameter(m4=xor(i4,j4))
      parameter(m8=xor(i8,j8))
      parameter(n8=xor(k8,l8))

      do i=1,5
        call checki1(m1(i),xor(i1(i),j1(i)))
        call checki2(m2(i),xor(i2(i),j2(i)))
        call checki4(m4(i),xor(i4(i),j4(i)))
        call checki8(m8(i),xor(i8(i),j8(i)))
        call checki8(n8(i),xor(k8(i),l8(i)))
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
