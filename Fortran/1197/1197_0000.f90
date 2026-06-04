type ty(k)
  integer,kind::k=4
  integer(kind=k):: mem
end type
type(ty(4)):: var
var= ty(4)(mem=1)
write(1,*)var
print *,'sngg048q : pass'
end
