if ( f2(.true.)/=0) print *,101
if ( f2(.not..true.)/=1) print *,102
print *,'pass'
contains
function f2(init)
  integer :: f2
  logical :: init
  block
    integer :: j
    save
    if (init) then
       j = 0
    else
       j = j + 1
    end if
    f2 = j
  end block
  return
end function f2
end
