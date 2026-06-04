 implicit none
 integer:: n=2
  associate(k=>n)
  block
   integer,dimension(1,3,k):: a2(k),a3
   if (size(a2)/=2) print *,102
   if (size(a3)/=6) print *,103
  end block
end associate
print *,'pass'
end
