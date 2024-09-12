integer,target :: trg
factorial(5)=500
if (trg /=500)print *,101
print *,"Pass"
contains
        recursive function factorial(n) result(res)
            integer,pointer:: res
            integer :: n
            res=>trg
            if (n .eq. 0) then
                res = 1
            else
                res = n * factorial(n - 1)
            end if
        end function
end
