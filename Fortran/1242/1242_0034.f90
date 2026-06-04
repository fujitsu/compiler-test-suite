module particle
  type, abstract :: exprt
     integer :: aaa
  end type exprt
  type :: prt_exprt
     class(exprt), allocatable :: x
  end type prt_exprt
  type, extends (exprt) :: listt
     integer, dimension(:), allocatable :: expr
  end type listt
contains
function iTRANSPOSE(arr)
class(prt_exprt),pointer :: iTRANSPOSE
class(prt_exprt)         :: arr(1)
end function
function jTRANSPOSE(arr)
class(prt_exprt),pointer :: jTRANSPOSE
class(*        )         :: arr
end function
  subroutine initlist (object, n,sss)
    class(prt_exprt), intent(out) :: object(1,1)
type (listt),allocatable ::listta
class(*) :: sss
   object(1,1)%x=object(1,1)%x!1!listta
block
select type (x =>( (object(:,:size((/(1,i=int(1),int(1))/))))) )
     CLASS DEFAULT
    end select
end block
  end subroutine initlist
function ifun(arr)
integer :: arr(1)
end 
end module particle
print *,'pass'
end
