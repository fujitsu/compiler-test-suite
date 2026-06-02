

type ty_data
 integer,pointer :: ip
end type
type ty_proc
 procedure(),pointer,nopass :: pp
end type

external func1
type (ty_proc) :: typ


typ = ty_proc(func1)

print *,'pass'
end

function func1()
 integer :: func1
 func1 = 1
end function

function func2()
 interface
  function func1()
   integer :: func1
  end function
 end interface
 procedure(func1),pointer :: func2
 func2 => func1
end function
