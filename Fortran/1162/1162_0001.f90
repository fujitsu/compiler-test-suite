integer,parameter :: isss(1)=3
         associate (src =>isss(1))
         block
           real :: cSum(src)
           cSum=src
if (size(cSum)/=3) print *,1001
if (any(cSum/=3)) print *,1002
         end block
        end associate
print *,'sngg010o : pass'
end

