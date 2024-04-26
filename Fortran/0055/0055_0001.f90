      module m1
         contains
          type(integer) function f1()
            f1=1
          end function
          type(integer ) function f2()
            f2=10
          end function
          type(integer*4) function f3()
            f3=100
          end function
          type(integer(kind=4)) function f4()
            f4=200
          end function

          type(character) function cf1()
            cf1="A"
          end function
          type(character ) function cf2()
            cf2="B"
          end function
          type(character(len=1) ) function cf3()
            cf3="C"
          end function
          type(character*1) function cf4()
            cf4="D"
          end function

          type(logical) function lf1()
            lf1=.true.
          end function
          type(logical ) function lf2()
            lf2=.true.
          end function
          type(logical*4) function lf3()
            lf3=.false.
          end function
          type(logical(4)) function lf4()
            lf4=.false.
          end function
      end
      use m1
       if( cf3() /= "C") print *,101
       if( f4() /= 200) print *,102
       if( lf2() .neqv. .true.) print *,103
        print *,"PASS"
      end
