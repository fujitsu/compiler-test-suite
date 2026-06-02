c
c
      call s1
      print *,'pass'
      end
      module m2
       private x1abs,x2abs
       interface xabs
         module procedure x1abs,x2abs
       end interface
       contains
       function x1abs(a) result(r)
       complex (kind=8)a,r
       r=abs(a)
       end function
       function x2abs(a) result(r)
       complex (kind=16)a,r
       r=abs(a)
       end function
      end module
      module m1
      use m2,only:xx=>xabs
      interface abs
       module procedure iabs2,iabs
      end interface
      contains
      subroutine s2
      interface abs
       module procedure cabs
      end interface
       if (abs(-1_1)/=1)print *,'fail'
       if (abs( 2_2)/=-2+2)print *,'fail'
       if (abs( 4_4)/=-4+4)print *,'fail'
       if (abs(-8_8)/=8)print *,'fail'
       if (abs(-4._4)/= 4.)print *,'fail'
       if (abs(-8._8)/= 8._8)print *,'fail'
       if (abs(-16._16)/= 16._16)print *,'fail'
       if (abs(( 4._4, 4._4))/=-( 4._4, 4._4)+(4,4))print *,'fail'
       if (abs((-4._8,-4._8))/=xx((-4._8,-4._8)))print *,'fail'
       if (abs((-4._16,-4._16))/=xx((-4._16,-4._16)))print *,'fail'
      end subroutine
      function iabs2(i)
          integer (kind=2)i
          if (i/=2)print *,'fail';iabs2=-i+2
      end function
      function iabs (i)
          integer (kind=4)i
          if (i/=4)print *,'fail';iabs=-i+4
      end function
      function cabs (i)
          complex (kind=4)i,cabs
          if (i/=(4,4))print *,'fail'
          cabs=-i+(4,4)
      end function
      end module
      subroutine s1
      integer abs(5)
      call ss1
      contains
      subroutine ss1
      use m1,only:t2=>s2,xx=>xx
       interface abs
          function iabs2(i)
          integer (kind=2)i
          end function
          function iabs (i)
          integer (kind=4)i
          end function
          function cabs (i)
          complex (kind=4)i,cabs
          end function
       end interface
       if (abs(-1_1)/=1)print *,'fail'
       if (abs(-2_2)/=2*2)print *,'fail'
       if (abs(-4_4)/=4*4)print *,'fail'
       if (abs(-8_8)/=8)print *,'fail'
       if (abs(-4._4)/=4.)print *,'fail'
       if (abs(-8._8)/=8._8)print *,'fail'
       if (abs(-16._16)/=16._16)print *,'fail'
       if (abs((-4._4,-4._4))/=-(-4._4,-4._4)*(4,4))print *,'fail'
       if (abs((-4._8,-4._8))/=xx((-4._8,-4._8)))print *,'fail'
       if (abs((-4._16,-4._16))/=xx((-4._16,-4._16)))print *,'fail'
      call t2
      end subroutine
      end
      function iabs2(i)
          integer (kind=2)i
          if (i/=-2)print *,'fail';iabs2=-i*2
      end function
      function iabs (i)
          integer (kind=4)i
          if (i/=-4)print *,'fail';iabs=-i*4
      end function
      function cabs (i)
          complex (kind=4)i,cabs
          if (i/=-(4,4))print *,'fail'
          cabs=-i*(4,4)
      end function
