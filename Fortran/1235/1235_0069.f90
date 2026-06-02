implicit none
 integer:: n=2
 integer:: m=3
  associate(k=>n,p=>n*2)
  block
   type ty
     integer::x
   end type
   type(ty),dimension(k) :: a
   type(ty),dimension(m) :: b
   type(ty),dimension(p) :: c
   integer ,dimension(k) :: aa
   if (size(a)/=2) print *,102
   if (size(b)/=3) print *,1021
   if (size(c)/=4) print *,1021
  end block
end associate
print *,'pass'
end
