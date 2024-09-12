call test()
print *,'pass'
end

subroutine test()
call xxx()
end
subroutine xxx()
common /com/ iii
  iii=1
  call abc
end 



recursive subroutine abc

  type t1
     integer, allocatable :: i(:)
   end type

  type t2
     integer, pointer :: i(:) => null()
   end type
  type (t1),save :: v1
  type (t2) :: v2 /t2(null())/

common /com/ iii
  if (.not. allocated(v1%i))  then
        allocate (v1%i(10))
       if (iii.eq.2) print *,'err'
  endif
  if (.not. associated(v2%i)) then
        allocate(v2%i(10))
       if (iii.eq.2) print *,'erra'
  endif
  if (iii.eq.1) then
     iii=2
     call abc
  endif

end subroutine



