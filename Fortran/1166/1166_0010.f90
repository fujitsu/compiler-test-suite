 integer:: n=2
  associate(k=>n)
  block
   type ty
     integer::x
   end type
   type(ty),dimension(k) :: a
   type(ty),dimension(3) :: b
   type(ty),dimension(k) :: c,d(3)
   type(ty),dimension(k) :: e(k)
   type(ty),dimension(k) :: f(3)
   type(ty),dimension(4) :: g(k)
   type(ty),dimension(4) :: h(3)
   if (size(a)/=2) print *,102
   if (size(b)/=3) print *,1021
   if (size(c)/=2) print *,1022
   if (size(d)/=3) print *,102211
   if (size(e)/=2) print *,1022121
   if (size(f)/=3) print *,102213
   if (size(g)/=2) print *,102241
   if (size(h)/=3) print *,102215
  end block
end associate
print *,'sngg504q : pass'
end
