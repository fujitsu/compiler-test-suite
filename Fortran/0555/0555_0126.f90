        interface
        function fun()
        integer,pointer :: fun(:,:)
        end function
        end interface
call s(fun())
contains
subroutine s(dum)
class(*)::dum(:,:)
 
print*,shape(dum)
end subroutine
end
 
function fun()
        integer,pointer :: fun(:,:)
        allocate(fun(5,5))
        fun(1,1) = 10
        end function

