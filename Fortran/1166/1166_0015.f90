 integer:: n=2,m=3
  associate(k=>n)
  block
   type ty
     integer::x
   end type
   type(ty),dimension(k) :: a
   type(ty),dimension(m) :: b
   type(ty),dimension(k) :: c,d(m)
   type(ty),dimension(k) :: e(k)
   type(ty),dimension(k) :: f(m)
   type(ty),dimension(m) :: g(k)
   type(ty),dimension(m) :: h(m+1)
   if (size(a)/=2) print *,102
   if (size(b)/=3) print *,1021
   if (size(c)/=2) print *,1022
   if (size(d)/=3) print *,102211
   if (size(e)/=2) print *,1022121
   if (size(f)/=3) print *,102213
   if (size(g)/=2) print *,102241
   if (size(h)/=4) print *,102215
  end block
end associate
print *,'sngg510q : pass'
end
