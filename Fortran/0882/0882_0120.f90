        interface
        function fun()
        character(len=10):: fun(10)
        end function
        end interface
call s(fun())
contains
subroutine s(dum)
class(*) :: dum(:)
print*,shape(dum)
end subroutine
end
function fun()
        character(len=10):: fun(10)

        fun(:)(1:7) = 'test-chhhh'
end function
