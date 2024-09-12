enum, bind(c)
   enumerator :: xx = 12
   enumerator :: yy
   enumerator :: zz
end enum

type tp
   integer :: aa = zz
   integer :: bb = xx
end type tp

type(tp) tt(2)

print*, xx
print*, yy
print*, zz
print*, tt

end
