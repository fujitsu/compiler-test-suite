 module m1
         procedure(mfun),pointer :: pprc
         procedure(pprc) :: p1
         procedure(p1) :: p2
         contains
         function mfun(d1)
         integer :: mfun,d1
         mfun = d1 + 2
         end function
        end
print *,'pass'
end
