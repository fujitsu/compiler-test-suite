 integer:: n=2
  associate(k=>n)
  block
   type ty
     integer::x
   end type
   type(ty),dimension(k) :: a
   dimension  b(3)
   integer,dimension(3)::  c
   if (size(a)/=2) print *,102
   if (size(b)/=3) print *,1021
   if (size(c)/=3) print *,1022
  end block
end associate
print *,'sngg503q : pass'
end
