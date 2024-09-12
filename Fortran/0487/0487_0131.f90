1 module m1
         procedure(mfun) :: p1
         procedure(p1) :: p2
         contains
         function mfun(d1)
         integer :: mfun,d1
         mfun = d1 + 2
         end function
         end
        use m1
        procedure(p1) :: p3
print *,'pass'
        end
