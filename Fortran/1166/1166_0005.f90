 implicit none
 integer:: n=2
  associate(k=>n)
  block
   dimension :: a(k)
   character(k):: a*(3)
   dimension :: b (3)
   character(k):: b *(3)
   dimension :: c(k)
   character(3):: c*(3)
   dimension :: d (3)
   character(3):: d *(3)
   if (size(a)/=2) print *,102
   if (len (a)/=3) print *,103
   if (size(b)/=3) print *,1021
   if (len (b)/=3) print *,1032
   if (size(c)/=2) print *,202
   if (len (c)/=3) print *,203
   if (size(d)/=3) print *,2021
   if (len (d)/=3) print *,2032
  end block
end associate
print *,'sngg493q : pass'
end
