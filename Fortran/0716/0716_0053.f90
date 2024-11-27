integer,pointer :: p1 => null()
integer,pointer :: p2
data p2/null()/
type aa
  integer,pointer :: a1
endtype
type(aa) x2(2)
data (x2(i)%a1,i=1,2)/2*null()/
end
