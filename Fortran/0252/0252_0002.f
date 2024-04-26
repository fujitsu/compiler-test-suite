      interface gnr
      integer function fun1(d1,d2)
      integer::d1,d2
      end function
      end interface

      interface gnr
      function fun2(d1,d2)
      integer::d1
      real::d2
      end function
      end interface

      block
      interface gnr
      real function fun3(d1,d2)
      REAL::d1
      real::d2
      end function
      end interface
        block
        interface gnr
        real function fun4(d1,d2)
        REAL::d1
        integer::d2
        end function
        end interface
        if(gnr(10.50,2)/=5.25)print*,101
        end block
        if(gnr(4,2)/=6)print*,102
        if(gnr(10.50,2.25)/=8.25)print*,103
      end block
      if(gnr(4,2.5)==10)print*,"pass"
      end

      integer function fun1(d1,d2)
      integer::d1,d2
      fun1=d1+d2
      end function

      REAL function fun2(d1,d2)
      integer::d1
      real::d2
      fun2=d1*d2
      end function

      REAL function fun3(d1,d2)
      real::d1
      real::d2
      fun3=d1-d2
      end function

      real function fun4(d1,d2)
      REAL::d1
      integer::d2
      fun4=d1/d2
      end function
