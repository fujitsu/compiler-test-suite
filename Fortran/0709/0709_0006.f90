 call s1
 print *,'pass'
 end
     module m1
       interface abs
          module procedure r4,ch,r8,rq,i4
       end interface
       contains
       function r4(a) result(r)
       real ,intent(in)::a
       real::r
       r=a+1.
       end function
       function r8(a) result(r)
       real(8) ,intent(in)::a
       real::r
       r=a+2.
       end function
       function rq(a) result(r)
       real(16) ,intent(in)::a
       real::r
       r=a+3.
       end function
       function i4(a) result(r)
       integer ,intent(in)::a
       real   ::r
       r=a+4.
       end function
       function ch(a) result(r)
       character(*),intent(in)::a
       real   ::r
       r=ichar(a)+5.
       end function
      end
  subroutine s1
  use m1
  if (abs(-1_1)/=1)print *,'fail'
  if (abs(-2_2)/=2)print *,'fail'
  if (abs(-3_4)/=-3_4+4.)print *,'fail'
  if (abs(-4_8)/=4)print *,'fail'
  if (abs(-5._4)/=-5._4+1.)print *,'fail'
  if (abs(-7._8)/=-7._4+2.)print *,'fail'
  if (abs(-9._16)/=-9._4+3.)print *,'fail'
  if (abs(achar(iachar('a')))/=iachar('a')+5.)print *,'fail'
  if (rx(abs((-1._4,-2._4))-c1((-1._4,-2._4)))>0.000001)print *,'fail'
  if (dx(abs((-1._8,-2._8))-c2((-1._8,-2._8)))>0.00000001_8)print *,'fail'
  if (qx(abs((-1._16,-2._16))-c3((-1._16,-2._16)))>0.1e-16_16)print *,'fail'
  contains 
   function rx(r)
   intrinsic abs
   complex(4)::r
   real(4)::rx
   rx=abs(r)
   end function
   function dx(d)
   complex(8)::d
   real(8)::dx
   dx=abs(d)
   end function
   function qx(q)
   complex(16)::q
   real(16)::qx
   qx=abs(q)
   end function
   function c2(c) result(r)
     complex (8),intent(in)::c
     complex (8)           ::r
     intrinsic abs
     r=abs(c)
   end function
   function c3(c) result(r)
     complex (16),intent(in)::c
     complex (16)           ::r
     intrinsic abs
     r=abs(c)
   end function
   function c1(c) result(r)
     complex (4),intent(in)::c
     complex (4)           ::r
     intrinsic abs
     r=abs(c)
   end function
end
