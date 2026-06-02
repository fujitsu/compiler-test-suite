 implicit none
  block
   integer     ,dimension(2):: g2,g3
   integer     ,dimension(2):: p1
   if (size(g2)/=2) print *,3303
   if (size(g3)/=2) print *,3303
   if (size(p1)/=2) print *,3303
  end block
print *,'sngg127p : pass'
end
