module mod
interface
 function func()
 end function
end interface
end module
subroutine sub
  use mod
type w
 integer::x
end type
     block
       procedure(inn),pointer::p
     end block
  contains
    subroutine  inn(d) 
      type(w)             :: d
    end subroutine
end
print *,'pass'
end
