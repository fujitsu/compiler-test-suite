 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(2),dimension(k):: a3*(k)(2)
   if (len(a3)/=2) print *,1103
   if (size(a3)/=2) print *,1133
  end block
end associate
print *,'sngg117p : pass'
end
