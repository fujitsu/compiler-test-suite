c
c
      call s1
      print *,'pass'
      end
      module m1
      type t1
        sequence
        integer x
      end type
       interface c
         module procedure c1,c0
       end interface
      contains
       function  f1()
       implicit type (t1)(f)
       type t1
         sequence
         complex x
       end type
       f1%x=(1,2)
       end function
       function  f0()
       implicit type(t1)(f)
       f0%x=(3,4)
       end function
       function c0(t0) result(r)
        implicit type(t1)(t)    
        logical r
        if (t0%x/=3)print *,'fail'
        r=.false.
       end function
       function c1(t11) result(r)
        implicit type(t1)(t)    
        logical r
        type t1
         sequence
         complex x
        end type
        if (t11%x/=(1,2))print *,'fail'
        r=.false.
       end function
      end module
      subroutine s1
      use m1
      if (c(f1()))print *,'fail'
      if (c(f0()))print *,'fail'
      end
