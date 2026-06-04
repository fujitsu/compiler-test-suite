 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(k),dimension(2):: a3(k)*(2)
   if (len(a3)/=2) print *,1103
   if (size(a3)/=2) print *,1133
  end block
end associate
print *,'sngg115p : pass'
end
