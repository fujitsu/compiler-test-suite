subroutine s(k)
 implicit none
   integer::k
   character(3),dimension(k):: g2(3)*(k),g3
   character(k),dimension(k):: p1
   if (size(g2)/=3) print *,3303
   if (size(g3)/=2) print *,3303
   if (size(p1)/=2) print *,3303
   if (len(g2)/=2) print *,1303
   if (len(g3)/=3) print *,1303
   if (len(p1)/=2) print *,1303
end
 implicit none
 integer:: k=2
call s(k)
print *,'sngg124p : pass'
end
