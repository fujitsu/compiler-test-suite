integer,parameter :: ip = 4
character(ip) :: cc(0)
integer :: i(0)

cc = [character(ip) :: ]

if (size(cc).ne.size(c_func(ip))) print *,'fail'
if (kind(cc).ne.kind(c_func(ip))) print *,'fail'

print *,'pass'

contains
 function c_func(dummy_i4)
  integer :: dummy_i4
  character(dummy_i4) :: c_func(0)
  c_func = [character(dummy_i4) :: ]
 end function
end
