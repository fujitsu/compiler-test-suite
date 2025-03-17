type ty1
 integer :: ti1
end type

integer             :: ii(0)
real                :: rr(0)
complex             :: cc(0)
logical             :: ll(0)
character           :: ss(0)

integer(kind = 1)   :: i1(0)
integer(kind = 2)   :: i2(0)
integer(kind = 4)   :: i4(0)
integer(kind = 8)   :: i8(0)

real(kind = 4 )     ::  r4(0)
real(kind = 8 )     ::  r8(0)
real(kind = 16)     :: r16(0)

complex(kind = 4 )  ::  c4(0)
complex(kind = 8 )  ::  c8(0)
complex(kind = 16)  :: c16(0)

logical(kind = 1)   :: l1(0)
logical(kind = 2)   :: l2(0)
logical(kind = 4)   :: l4(0)
logical(kind = 8)   :: l8(0)

character(kind = 1) :: s1(0)
type(ty1)           :: t1(0)

ii = [integer   :: ]
rr = [real      :: ]
cc = [complex   :: ]
ll = [logical   :: ]
ss = [character :: ]

if (size(ii).ne.size([integer   :: ])) print *,'fail'
if (size(rr).ne.size([real      :: ])) print *,'fail'
if (size(cc).ne.size([complex   :: ])) print *,'fail'
if (size(ll).ne.size([logical   :: ])) print *,'fail'
if (size(ss).ne.size([character :: ])) print *,'fail'

i1 = [integer (kind = 1) :: ]
i2 = [integer (kind = 2) :: ]
i4 = [integer (kind = 4) :: ]
i8 = [integer (kind = 8) :: ]

if (size(i1).ne.size([integer (kind = 1) :: ])) print *,'fail'
if (size(i2).ne.size([integer (kind = 2) :: ])) print *,'fail'
if (size(i4).ne.size([integer (kind = 4) :: ])) print *,'fail'
if (size(i8).ne.size([integer (kind = 8) :: ])) print *,'fail'

r4  = [real (kind = 4 ) :: ]
r8  = [real (kind = 8 ) :: ]
r16 = [real (kind = 16) :: ]

if (size(r4 ).ne.size([real (kind = 4  ) :: ])) print *,'fail'
if (size(r8 ).ne.size([real (kind = 8  ) :: ])) print *,'fail'
if (size(r16).ne.size([real (kind = 16 ) :: ])) print *,'fail'

c4  = [complex (kind = 4 ) :: ]
c8  = [complex (kind = 8 ) :: ]
c16 = [complex (kind = 16) :: ]

if (size(c4 ).ne.size([complex (kind = 4  ) :: ])) print *,'fail'
if (size(c8 ).ne.size([complex (kind = 8  ) :: ])) print *,'fail'
if (size(c16).ne.size([complex (kind = 16 ) :: ])) print *,'fail'

l1 = [logical (kind = 1) :: ]
l2 = [logical (kind = 2) :: ]
l4 = [logical (kind = 4) :: ]
l8 = [logical (kind = 8) :: ]

if (size(l1).ne.size([logical (kind = 1) :: ])) print *,'fail'
if (size(l2).ne.size([logical (kind = 2) :: ])) print *,'fail'
if (size(l4).ne.size([logical (kind = 4) :: ])) print *,'fail'
if (size(l8).ne.size([logical (kind = 8) :: ])) print *,'fail'

s1 = [character (kind = 1) :: ]

if (size(s1).ne.size([character (kind = 1) :: ])) print *,'fail'

t1 = [ty1 :: ]
if (size(t1).ne.size([ty1 :: ])) print *,'fail'

call cont_sub(1)

print *,'pass'

contains

 subroutine cont_sub(dummy_len)
  integer :: dummy_len
  character(dummy_len) :: s1(0)

  s1 = [character(dummy_len) :: ]
  if (size(s1).ne.size([character(dummy_len) :: ])) print *,'fail'
 end subroutine

end

