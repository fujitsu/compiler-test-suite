call test()
print *,'pass'
end

subroutine test()
call xxx()
end
module my_mod

  type t1
     integer, allocatable :: i(:)
   end type

  type t2
     integer, pointer :: i(:) => null()
   end type

contains

subroutine abc

  type (t1), save :: v1
  type (t2), save :: v2

common /com/ iii
  if (.not. allocated(v1%i))  then
        allocate (v1%i(10))
       if (iii.eq.2) print *,'err'
  endif
  if (.not. associated(v2%i)) then
        allocate(v2%i(10))
       if (iii.eq.2) print *,'err'
  endif

end subroutine

end module


subroutine xxx()
  use my_mod
common /com/ iii
  iii=1
  call abc
  iii=2
  call abc
end 
