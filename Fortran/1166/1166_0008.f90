 implicit none
 integer:: n=2
  associate(k=>n)
  block
   type ty
     integer::x
   end type
   type(ty),dimension(k) :: a
   if (size(a)/=2) print *,102
  end block
end associate
print *,'sngg502q : pass'
end
