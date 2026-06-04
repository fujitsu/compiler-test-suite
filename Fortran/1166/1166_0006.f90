 implicit none
 integer:: n=2
  associate(k=>n,m=>n+2)
  block
   dimension :: a(k)
   character(k):: a*(m)
   dimension :: b (3)
   character(k):: b *(m)
   dimension :: c(k)
   character(3):: c*(m)
   dimension :: d (3)
   character(3):: d *(m)
   if (size(a)/=2) print *,102
   if (len (a)/=4) print *,103
   if (size(b)/=3) print *,1021
   if (len (b)/=4) print *,1032
   if (size(c)/=2) print *,202
   if (len (c)/=4) print *,203
   if (size(d)/=3) print *,2021
   if (len (d)/=4) print *,2032
  end block
end associate
print *,'sngg494q : pass'
end
