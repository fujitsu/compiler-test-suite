 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(k),dimension(1,3,k):: a2(3),a3
   if (size(a2)/=3) print *,102
   if (len (a2)/=2) print *,1021
   if (size(a3)/=6) print *,1032
   if (len (a3)/=2) print *,1023
  end block
end associate
print *,'sngg489q : pass'
end
