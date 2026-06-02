subroutine sub(r)
integer::r
         integer :: c(len ([character(2):: '1234'(1:r)])) 
                    if (size(c)/=2) print *,1001,size(c)
end
         print *,'sngg171p : pass'
         end

