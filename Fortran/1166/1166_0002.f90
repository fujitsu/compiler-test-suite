 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(k),dimension(k):: a(3)
   character(k),dimension(k):: b
   character(k),dimension(k):: c*3
   character(k),dimension(k):: d(3)*3
   if (size(a)/=3) print *,102
   if (size(b)/=2) print *,103
   if (size(c)/=2) print *,104
   if (size(d)/=3) print *,105
   if (len (a)/=2) print *,112
   if (len (b)/=2) print *,113
   if (len (c)/=3) print *,114
   if (len (d)/=3) print *,115
  end block
end associate
print *,'sngg490q : pass'
end
