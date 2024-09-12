module mod
interface
 function func() 
 end function
end interface
end module
  use mod
     block
     procedure(inn),pointer::p
     end block
print *,'pass'
  contains
    subroutine inn() 
    end 
  end 
