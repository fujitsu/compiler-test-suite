integer,target::atar=4
if (atar /=4) print *,101
fun(atar)=100
if (atar /=100) print *,102
print *,"Pass"
contains
        function fun (dtar) result (res)
        integer,target::dtar
        integer,pointer::res
        res=>dtar
        end function
end
