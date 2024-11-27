subroutine sub(a)
  procedure()::a=>null()
  pointer :: a
end
subroutine sub2(a)
  pointer :: a
  procedure()::a=>null()
end

integer function fun(a)
  pointer :: a
  procedure()::a=>null()
  fun=0
end
integer function fun2(a)
  procedure()::a=>null()
  pointer :: a
  fun2=0
end

module m
contains
  subroutine subm(a)
    pointer :: a
    procedure()::a=>null()
  end subroutine
  subroutine subm2(a)
    procedure()::a=>null()
    pointer :: a
  end subroutine
  
  integer function funm(a)
    pointer :: a
    procedure()::a=>null()
    funm=0
  end function
  integer function funm2(a)
    pointer :: a
    procedure()::a=>null()
    funm2=0
  end function
end module

use m
contains
  subroutine sub(a)
    pointer :: a
    procedure()::a=>null()
  end subroutine
  subroutine sub2(a)
    procedure()::a=>null()
    pointer :: a
  end subroutine
  
  integer function fun(a)
    pointer :: a
    procedure()::a=>null()
    fun=0
  end function
  integer function fun2(a)
    procedure()::a=>null()
    pointer :: a
    fun2=0
  end function
end

