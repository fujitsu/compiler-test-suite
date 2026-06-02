 implicit none
 integer:: n=2
  associate(k=>n)
  block
   integer,dimension(k):: a1,a2(3),a3
   integer,dimension(3):: b1(k),b2,b3(k)
   if (size(a1)/=2) print *,101
   if (size(a2)/=3) print *,102
   if (size(a3)/=2) print *,103
   if (size(b1)/=2) print *,201
   if (size(b2)/=3) print *,202
   if (size(b3)/=2) print *,203
  end block
end associate
print *,'sngg101p : pass'
end
