      module m1
         contains
          type(real) function f1()
            f1=1.5
          end function
          type(real*4) function f3()
            f3=100.5
          end function

          type(complex) function cf1()
            cf1=(1.5,1.5)
          end function
          type(complex(4) ) function cf2()
            cf2=(10.5,10.5)
          end function
          type(complex(kind=4) ) function cf3()
            cf3=(20.5,20.5)
          end function
      end

      use m1
      implicit type(integer) (x-z)
       type(real)::rr
       procedure(type(real))::f4
       rr=f3()
       if( rr /= 100.5) print *,101
       if( f4() /= 200.5) print *,103
       if( cf2() /= (10.5,10.5)) print *,102
        print *,"PASS"
      end
          type(real(kind=4)) function f4()
            f4=200.5
          end function
