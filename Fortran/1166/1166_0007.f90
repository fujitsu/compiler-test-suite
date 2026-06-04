 implicit none
 integer:: n=2
  associate(k=>n)
  block
   type ty
     integer::x
   end type
   type(ty) :: a(k)
   if (size(a)/=2) print *,102
  end block
end associate
print *,'sngg501q : pass'
end
