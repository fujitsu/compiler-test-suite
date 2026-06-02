 implicit none
 integer:: n=2
  associate(k=>n)
  block
   dimension :: a2(k)
   character(k):: a2*(3)
   if (size(a2)/=2) print *,102
   if (len (a2)/=3) print *,103
  end block
end associate
print *,'sngg488q : pass'
end
