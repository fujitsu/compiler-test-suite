type x
    character(len=:),allocatable:: x1(:)
end type

type(x),allocatable:: z1,z2
type(x), allocatable::w

allocate(w)
allocate(character(len=2)::w%x1(2))
w%x1="AB"
if (any(w%x1/="AB")) print *,101
allocate(z1,z2,source=w)
w%x1="CD"
if (any(z1%x1/="AB")) print *,102
if (any(z2%x1/="AB")) print *,103
if (any(w%x1/="CD")) print *,104
print *,'pass'
end
