module i4eq_m
integer(kind=4) d1,d2
integer(kind=4) i4eq

contains

integer(kind=4) function comp_i4()
if (d1==d2) then
  i4eq = 1
else
  i4eq = 0
endif
comp_i4=i4eq
end function

subroutine init_i4()
call sub(d1)
call sub(d2)
contains

subroutine sub(a)
integer(kind=4) a
a = 2
end subroutine
end subroutine

end module

module i8eq_m
integer(kind=8) d1,d2
integer(kind=8) i8eq

contains

integer(kind=8) function comp_i8()
if (d1==d2) then
  i8eq = 1
else
  i8eq = 0
endif
comp_i8 = i8eq
end function

subroutine init_i8()
call sub(d1)
call sub(d2)
contains

subroutine sub(a)
integer(kind=8) a
a = 2
end subroutine
end subroutine

end module

program main
use i4eq_m
use i8eq_m
integer(kind=4) i4data
integer(kind=8) i8data
logical(kind=4) l4data
logical(kind=8) l8data

print *,"test start"
call init_i4()
call init_i8()
i4data=comp_i4()
i8data=comp_i8()
if (i4data==comp_i4()) then
  l4data = .true.
else
  l4data = .false.
endif
if (i8data==comp_i8()) then
  l8data = .true.
else
  l8data = .false.
endif
if (l4data .and. l8data) then
  print *,"test OK"
else
  print *,"test NG"
endif
print *,"test end"
end program
