subroutine sub(a)
  procedure(),pointer::a=>null()
end

integer function fun(a)
  procedure(),pointer::a=>null()
  fun=0
end

module m
contains
  subroutine subm(a)
    procedure(),pointer::a=>null()
  end subroutine
  
  integer function funm(a)
    procedure(),pointer::a=>null()
    funm=0
  end function
end module

use m
contains
  subroutine sub(a)
    procedure(),pointer::a=>null()
  end subroutine
  
  integer function fun(a)
    procedure(),pointer::a=>null()
    fun=0
  end function
end

