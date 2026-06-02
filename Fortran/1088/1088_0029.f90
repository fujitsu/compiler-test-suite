 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(k):: a2(k)*(3)
   if (len(a2)/=3) print *,1102
  end block
end associate
print *,'sngg111p : pass'
end
