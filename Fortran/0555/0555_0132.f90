        interface
        function fun()
        character, pointer :: fun(:)
        end function
        end interface
call s(fun())
contains
subroutine s(dum)
class(*) :: dum(10)
print*,shape(dum)
print*,lbound(dum)
end subroutine
end
function fun()
        character,pointer:: fun(:)
        allocate(fun(10))
        fun(1:10) = 'test-ch'
end function
