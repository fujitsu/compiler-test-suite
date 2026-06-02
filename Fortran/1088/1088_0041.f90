 implicit none
 integer:: k=2
  block
   character(3),dimension(k):: g2(3)*(k),g3
   character(k),dimension(k):: p1
   if (size(g2)/=3) print *,3303
   if (size(g3)/=2) print *,3303
   if (size(p1)/=2) print *,3303
   if (len(g2)/=2) print *,1303
   if (len(g3)/=3) print *,1303
   if (len(p1)/=2) print *,1303
  end block
print *,'sngg123p : pass'
end
