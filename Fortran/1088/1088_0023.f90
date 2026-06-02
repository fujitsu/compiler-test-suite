 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(k):: a1,a2(3)*(k),a3
   if (size(a2)/=3) print *,102
   if (len(a1)/=2) print *,1101
   if (len(a2)/=2) print *,1102
   if (len(a3)/=2) print *,1103
  end block
end associate
print *,'sngg105p : pass'
end
