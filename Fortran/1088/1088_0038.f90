 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(3),dimension(k):: g2(3)*(k),g3
   character(k),dimension(k):: p2(3)*(k),p3
   if (size(g3)/=2) print *,3303
   if (len(g3)/=3) print *,1303
  end block
end associate
print *,'sngg120p : pass'
end
