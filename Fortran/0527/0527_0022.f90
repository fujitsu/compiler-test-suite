module xx
type ty1 
integer :: iii
end type
type ty2 
integer :: iii
end type
end

module m 
contains 
 subroutine sub(arg) 
  interface 
    function arg() 
    use xx
    type(ty1) :: arg
    end function
  end interface
 end subroutine
end module

 use m
 use xx
 type(ty1),external ::xxx
 call sub(xxx)
print *,'pass'
 end
    function xxx() 
    use xx
    type(ty1) :: arg
    end function
