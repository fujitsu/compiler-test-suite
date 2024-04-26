type g(dim)
Integer, kind :: dim
real:: c(dim)
End type
type xx
 integer::z
end type
type(xx)::v
type (g(2)) ::obj
if (obj%dim/=2) print *,101
if (a%kind/=4) print *,102
if (v%z%kind/=4) print *,103
print *,'pass'
End
