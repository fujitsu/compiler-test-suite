        1          module m0
        2          interface
        3           function x2(i)
        4             integer :: x2,i
        5           end function
        6          end interface
        7          end
        8          module mod
        9          use m0
       10            procedure (y),pointer :: pp
       11          contains
       12          function y()
       13            character :: y
       14            y='s'
       15          end function
       16          function   s() result(p)
       17            procedure (x2),pointer :: p
                    p=>x2
       18          end 
       19         end

       21         subroutine s1
       22         use mod
                     procedure (x2),pointer :: w 
                    pp=>y
                   w=>   s()
                    if (w(1)/=2) print *,303
       25         end
       26         call s1
       27         print *,'pass'

       29         end
       30          function x2(i)
       31               integer :: x2,i
       32               x2= i+1
       33           end function
