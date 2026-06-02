 implicit none
 integer:: n=2
  associate(k=>n)
  block
   integer,dimension(k):: a2(3),a3
   if (size(a2)/=3) print *,102
   if (size(a3)/=2) print *,103
  end block
end associate
print *,'sngg102p : pass'
end
