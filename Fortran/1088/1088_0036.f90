 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(3),dimension(k):: g1,g2(3)*(k),g3
   if (size(g1)/=2) print *,3303
   if (size(g2)/=3) print *,3303
   if (size(g3)/=2) print *,3303
   if (len(g1)/=3) print *,1303
   if (len(g2)/=2) print *,1303
   if (len(g3)/=3) print *,1303
  end block
end associate
print *,'sngg118p : pass'
end
