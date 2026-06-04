
      integer*1 i1,j1,k1,l1,m1,n1,o1,s1,t1,u1,v1
      integer*2 i2,j2,k2,l2,m2,n2,o2,s2,t2,u2,v2
      integer*4 i4,j4,k4,l4,m4,n4,o4,s4,t4,u4,v4
      integer*8 i8,j8,k8,l8,m8,n8,o8,s8,t8,u8,v8
 
      parameter (i1=1,j1=-1,s1=8, t1=-8, u1=0,v1=z'80')
      parameter (i2=1,j2=-1,s2=16,t2=-16,u2=0,v2=z'8000')
      parameter (i4=1,j4=-1,s4=32,t4=-32,u4=0,v4=z'80000000')
      parameter (i8=1,j8=-1,s8=64,t8=-64,u8=0,v8=z'8000000000000000')

      parameter(k1=ishft(i1,i1))
      parameter(k2=ishft(i2,i2))
      parameter(k4=ishft(i4,i4))
      parameter(k8=ishft(i8,i8))
      parameter(l1=ishft(j1,j1))
      parameter(l2=ishft(j2,j2))
      parameter(l4=ishft(j4,j4))
      parameter(l8=ishft(j8,j8))
      parameter(m1=ishft(i1,s1))
      parameter(m2=ishft(i2,s2))
      parameter(m4=ishft(i4,s4))
      parameter(m8=ishft(i8,s8))
      parameter(n1=ishft(j1,t1))
      parameter(n2=ishft(j2,t2))
      parameter(n4=ishft(j4,t4))
      parameter(n8=ishft(j8,t8))
      parameter(o1=ishft(i1,u1))
      parameter(o2=ishft(i2,u2))
      parameter(o4=ishft(i4,u4))
      parameter(o8=ishft(i8,u8))

      call checki1(k1,ishft(i1,i1))
      call checki2(k2,ishft(i2,i2))
      call checki4(k4,ishft(i4,i4))
      call checki8(k8,ishft(i8,i8))
      call checki1(l1,ishft(j1,j1))
      call checki2(l2,ishft(j2,j2))
      call checki4(l4,ishft(j4,j4))
      call checki8(l8,ishft(j8,j8))
      call checki1(m1,ishft(i1,s1))
      call checki2(m2,ishft(i2,s2))
      call checki4(m4,ishft(i4,s4))
      call checki8(m8,ishft(i8,s8))
      call checki1(n1,ishft(j1,t1))
      call checki2(n2,ishft(j2,t2))
      call checki4(n4,ishft(j4,t4))
      call checki8(n8,ishft(j8,t8))
      call checki1(o1,ishft(i1,u1))
      call checki2(o2,ishft(i2,u2))
      call checki4(o4,ishft(i4,u4))
      call checki8(o8,ishft(i8,u8))

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
