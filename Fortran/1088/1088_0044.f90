 implicit none
  block
   character(3),dimension(2):: g2,g3
   character(2),dimension(2):: p1
   if (size(g2)/=2) print *,3303
   if (size(g3)/=2) print *,3303
   if (size(p1)/=2) print *,3303
   if (len(g2)/=3) print *,1303
   if (len(g3)/=3) print *,1303
   if (len(p1)/=2) print *,1303
  end block
print *,'sngg126p : pass'
end
