
      integer*1,dimension(5)::i1,k1,l1,m1,n1,o1,p1,   s1,t1,sz1x,sz1y
      integer*2,dimension(5)::i2,k2,l2,m2,n2,o2,p2,   s2,t2,sz2x,sz2y
      integer*4,dimension(5)::i4,k4,l4,m4,n4,o4,p4,   s4,t4,sz4x,sz4y
      integer*8,dimension(5)::i8,k8,l8,m8,n8,o8,p8,q8,s8,t8,sz8x,sz8y,
     +                                                      sz8z
 
      parameter (i1=z'81',i2=z'8811',i4=z'88881111',
     +i8=z'8888888811111111')
      parameter (s1=-3,s2=-3,s4=-3,s8=-3)
      parameter (t1=3 ,t2=3, t4=3, t8=3 ) 
      parameter (sz1x=4,sz2x=8 ,sz4x=16,sz8x=32)
      parameter (sz1y=8,sz2y=16,sz4y=32,sz8y=64,sz8z=48)

      parameter(k1=ishftc(i1,s1,sz1x))
      parameter(k2=ishftc(i2,s2,sz2x))
      parameter(k4=ishftc(i4,s4,sz4x))
      parameter(k8=ishftc(i8,s8,sz8x))
      parameter(l1=ishftc(i1,t1,sz1x))
      parameter(l2=ishftc(i2,t2,sz2x))
      parameter(l4=ishftc(i4,t4,sz4x))
      parameter(l8=ishftc(i8,t8,sz8x))
      parameter(m1=ishftc(i1,s1,sz1y))
      parameter(m2=ishftc(i2,s2,sz2y))
      parameter(m4=ishftc(i4,s4,sz4y))
      parameter(m8=ishftc(i8,s8,sz8y))
      parameter(n1=ishftc(i1,t1,sz1y))
      parameter(n2=ishftc(i2,t2,sz2y))
      parameter(n4=ishftc(i4,t4,sz4y))
      parameter(n8=ishftc(i8,t8,sz8y))
      parameter(o1=ishftc(i1,t1))
      parameter(o2=ishftc(i2,t2))
      parameter(o4=ishftc(i4,t4))
      parameter(o8=ishftc(i8,t8))
      parameter(p1=ishftc(i1,0,t1))
      parameter(p2=ishftc(i2,0,t2))
      parameter(p4=ishftc(i4,0,t4))
      parameter(p8=ishftc(i8,0,t8))
      parameter(q8=ishftc(i8,s8,sz8z))

      do i=1,1
        call checki1(k1(i),ishftc(i1(i),s1(i),sz1x(i)))
        call checki2(k2(i),ishftc(i2(i),s2(i),sz2x(i)))
        call checki4(k4(i),ishftc(i4(i),s4(i),sz4x(i)))
        call checki8(k8(i),ishftc(i8(i),s8(i),sz8x(i)))
        call checki1(l1(i),ishftc(i1(i),t1(i),sz1x(i)))
        call checki2(l2(i),ishftc(i2(i),t2(i),sz2x(i)))
        call checki4(l4(i),ishftc(i4(i),t4(i),sz4x(i)))
        call checki8(l8(i),ishftc(i8(i),t8(i),sz8x(i)))
        call checki1(m1(i),ishftc(i1(i),s1(i),sz1y(i)))
        call checki2(m2(i),ishftc(i2(i),s2(i),sz2y(i)))
        call checki4(m4(i),ishftc(i4(i),s4(i),sz4y(i)))
        call checki8(m8(i),ishftc(i8(i),s8(i),sz8y(i)))
        call checki1(n1(i),ishftc(i1(i),t1(i),sz1y(i)))
        call checki2(n2(i),ishftc(i2(i),t2(i),sz2y(i)))
        call checki4(n4(i),ishftc(i4(i),t4(i),sz4y(i)))
        call checki8(n8(i),ishftc(i8(i),t8(i),sz8y(i)))
        call checki1(o1(i),ishftc(i1(i),t1(i)))
        call checki2(o2(i),ishftc(i2(i),t2(i)))
        call checki4(o4(i),ishftc(i4(i),t4(i)))
        call checki8(o8(i),ishftc(i8(i),t8(i)))
        call checki1(p1(i),ishftc(i1(i),0,    t1(i)))
        call checki2(p2(i),ishftc(i2(i),0,    t2(i)))
        call checki4(p4(i),ishftc(i4(i),0,    t4(i)))
        call checki8(p8(i),ishftc(i8(i),0,    t8(i)))
        call checki8(q8(i),ishftc(i8(i),s8(i),sz8z(i)))
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
