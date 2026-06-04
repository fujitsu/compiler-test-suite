 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(k):: a
   dimension :: a(k)
   character(3):: b
   dimension :: b(k)
   character(k):: c
   dimension :: c(2)
   character(3):: d
   dimension :: d(2)
   if (size(a)/=2) print *,102
   if (len (a)/=2) print *,103
   if (size(b)/=2) print *,112
   if (len (b)/=3) print *,113
   if (size(c)/=2) print *,122
   if (len (c)/=2) print *,123
   if (size(d)/=2) print *,132
   if (len (d)/=3) print *,133
  end block
end associate
print *,'sngg491q : pass'
end
