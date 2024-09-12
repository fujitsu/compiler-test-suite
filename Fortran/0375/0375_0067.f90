module mod
  use,intrinsic :: iso_c_binding,only:c_int
  type :: aaa
    integer :: iii
  end type
  contains
  type(aaa) function func(sss)
    type(aaa),value :: sss
    func = sss 
  end function
end module
print *,'pass'
end
