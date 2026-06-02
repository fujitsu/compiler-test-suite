 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(k):: a1*(3)(k)
   character(3):: a2*(k)(2)
   if (len(a1)/=3) print *,1101
   if (len(a2)/=2) print *,1102
   if (size(a1)/=2) print *,1103
   if (size(a2)/=2) print *,1103
  end block
end associate
print *,'sngg112p : pass'
end
