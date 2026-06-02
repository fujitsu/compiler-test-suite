c
c
      call s1
      print *,'pass'
      end
      module m1
      complex,parameter::x32=(32,32)
      character(len=*),parameter::y32='b'
      type t1
        integer   t11(-12:-11)
        complex   t12(-12:-11)
        character t13(-12:-11)
      end type
      end module
      module m2
      use m1
      type t2; type (t1),dimension(-22:-21)::t21; end type
      end module
      module m31
       use m2; type (t2),dimension(-32:-31)::t31
       data t31/2*t2(t1(31,(31,31),'a'))/
      end module
      module m32
      use m2,yy32=>y32; private y32;type (t2),dimension(-32:-31)
     1 ::t32,w32,q32,r32,s32,u32
      private v;integer,parameter::v(-65:-64)=(/-12,-11/)
      type (t2),dimension(-32:-31),parameter::y32=t2(t1(32,(32,32),'b'))
      data t32(-31)%t21(-21)%t11/2*y32(-31)%t21(-21)%t11(-11)/
      data r32(-31)%t21(-21)%t11(-12:-11)/2*y32(-31)%t21(-21)%t11(-11)/
      data s32(-31)%t21(-21)%t11(v)/2*y32(-31)%t21(-21)%t11(-11)/
      data u32(-31)%t21(-21)%t11(v(:))/2*y32(-31)%t21(-21)%t11(-11)/
      end module
      module m33
      use m2; private y33;type (t2),dimension(-32:-31)
     1 ::t33,w33,q33,r33,s33,u33
      private v;integer,parameter::v(-65:-64)=(/-12,-11/)
      type (t2),dimension(-32:-31),parameter::y33=t2(t1(32,(32,32),'b'))
      data t33(-31)%t21(-21)%t12/2*y33(-31)%t21(-21)%t12(-11)/
      data r33(-31)%t21(-21)%t12(-12:-11)/2*y33(-31)%t21(-21)%t12(-11)/
      data s33(-31)%t21(-21)%t12(v)/2*y33(-31)%t21(-21)%t12(-11)/
      data u33(-31)%t21(-21)%t12(v(:))/2*y33(-31)%t21(-21)%t12(-11)/
      end module
      module m34
      use m2; private y34;type (t2),dimension(-32:-31)
     1 ::t34,w34,q34,r34,s34,u34
      private v;integer,parameter::v(-65:-64)=(/-12,-11/)
      type (t2),dimension(-32:-31),parameter::y34=t2(t1(32,(32,32),'b'))
      data t34(-31)%t21(-21)%t13/2*y34(-31)%t21(-21)%t13(-11)/
      data r34(-31)%t21(-21)%t13(-12:-11)/2*y34(-31)%t21(-21)%t13(-11)/
      data s34(-31)%t21(-21)%t13(v)/2*y34(-31)%t21(-21)%t13(-11)/
      data u34(-31)%t21(-21)%t13(v(:))/2*y34(-31)%t21(-21)%t13(-11)/
      end module
      subroutine s1
      use m31;use m32;use m33;use m34
      call chk32
      call chk33
      call chk34
      contains
      subroutine chk34
      if (any(t34(-31)%t21(-21)%t13/=y32))print *,'fail'
      if (any(r34(-31)%t21(-21)%t13/=y32))print *,'fail'
      if (any(s34(-31)%t21(-21)%t13/=y32))print *,'fail'
      if (any(u34(-31)%t21(-21)%t13/=y32))print *,'fail'
      call set341(w34(-31)%t21(-21)%t13)
      if (any(w34(-31)%t21(-21)%t13/=y32))print *,'fail'
      call set342(q34(-31)%t21(-21)%t13)
      if (any(q34(-31)%t21(-21)%t13/=y32))print *,'fail'
      end subroutine chk34
      subroutine set341(id)
      character*(*) id(:); if (size(id)/=2)print *,'fail'; id=y32
      end subroutine
      subroutine set342(id)
      character*(*)id(*); id(1)=y32;id(2)=y32
      end subroutine
      subroutine chk33
      if (any(t33(-31)%t21(-21)%t12/=x32))print *,'fail'
      if (any(r33(-31)%t21(-21)%t12/=x32))print *,'fail'
      if (any(s33(-31)%t21(-21)%t12/=x32))print *,'fail'
      if (any(u33(-31)%t21(-21)%t12/=x32))print *,'fail'
      call set331(w33(-31)%t21(-21)%t12)
      if (any(w33(-31)%t21(-21)%t12/=x32))print *,'fail'
      call set332(q33(-31)%t21(-21)%t12)
      if (any(q33(-31)%t21(-21)%t12/=x32))print *,'fail'
      end subroutine chk33
      subroutine set331(id)
      complex id(:); if (size(id)/=2)print *,'fail'; id=x32
      end subroutine
      subroutine set332(id)
      complex id(*); id(1)=x32;id(2)=x32
      end subroutine
      subroutine chk32
      if (any(t32(-31)%t21(-21)%t11/=32))print *,'fail'
      if (any(r32(-31)%t21(-21)%t11/=32))print *,'fail'
      if (any(s32(-31)%t21(-21)%t11/=32))print *,'fail'
      if (any(u32(-31)%t21(-21)%t11/=32))print *,'fail'
      call set321(w32(-31)%t21(-21)%t11)
      if (any(w32(-31)%t21(-21)%t11/=32))print *,'fail'
      call set322(q32(-31)%t21(-21)%t11)
      if (any(q32(-31)%t21(-21)%t11/=32))print *,'fail'
      end subroutine chk32
      subroutine set321(id)
      integer id(:); if (size(id)/=2)print *,'fail'; id=32
      end subroutine
      subroutine set322(id)
      integer id(*); id(1)=32;id(2)=32
      end subroutine
      end subroutine s1
