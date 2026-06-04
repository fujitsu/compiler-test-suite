 implicit none
 integer:: n=2
  associate(k=>n)
  block
  block
   character(k),dimension(k):: a2(3)*(3),a3
   if (size(a2)/=3) print *,102
   if (size(a3)/=2) print *,103
   if (len(a3)/=2) print *,104
   if (len(a2)/=3) print *,105
  end block
  end block
end associate
print *,'pass'
end
