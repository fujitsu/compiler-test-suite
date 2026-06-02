 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(k),dimension(1,3,k):: a2(3)*(3),a3
   if (size(a2)/=3) print *,102
   if (size(a3)/=6) print *,103
   if (len(a2)/=3) print *,104
  end block
end associate
print *,'pass'
end
