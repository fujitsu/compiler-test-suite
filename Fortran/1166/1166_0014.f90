 integer:: n=2
 integer:: m=3
  associate(k=>n)
  block
   integer,dimension(k) :: a
   integer,dimension(m) :: b
   if (size(a)/=2) print *,102
   if (size(b)/=3) print *,1021
  end block
end associate
print *,'sngg508q : pass'
end
