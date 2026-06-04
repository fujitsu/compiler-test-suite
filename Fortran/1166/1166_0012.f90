 integer:: n=2
  associate(k=>n)
  block
   type ty
     integer::x
   end type
   type(ty),dimension(k) :: a
   type(ty),dimension(3) :: b
   if (size(a)/=2) print *,102
   if (size(b)/=3) print *,1021
  end block
end associate
print *,'sngg506q : pass'
end
