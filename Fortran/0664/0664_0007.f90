type def
integer :: x(10,15)
end type

type(def) :: t
if ((size(t%x,1).eq.10) .and. (size(t%x,2).eq.15)) then
  print *,'pass'
else
  call errtra
end if
end

