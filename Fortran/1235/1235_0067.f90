implicit none
 integer:: n=2
 integer:: m=3
 integer:: m2=3
  associate(k=>n)
  block
   type ty
     integer::x
   end type
   type(ty),dimension(k) :: a
   type(ty),dimension(m) :: b
   type(ty),dimension(m2) :: c
   if (size(a)/=2) print *,102
   if (size(b)/=3) print *,1021
   if (size(c)/=3) print *,1022
  end block
end associate
print *,'pass'
end
