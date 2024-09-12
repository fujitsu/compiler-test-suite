type ty1
 integer :: i
end type
integer   :: i(0)
real      :: r(0)
complex   :: c(0)
logical   :: l(0)
type(ty1) :: t(0)

i = [integer   :: ]
r = [real      :: ]
c = [complex   :: ]
l = [logical   :: ]
t = [ty1 :: ]

print *,'pass'

end
