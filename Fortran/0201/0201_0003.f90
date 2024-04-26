         integer function  f1()
          implicit none
           f1=1
          end function
          integer function f1() bind(c,name='ss1')
          implicit none
           f1=2
         end function

         implicit none
         interface
            integer function f1() bind(c,name='ss1')
            implicit none
            end function
         end interface
         if (f1()/=2) print *,101
      print *,'sngg343f : pass'
        end
