 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(2):: a1(k)*(3)
   character(k):: a2(k)*(3)
   if (len(a1)/=3) print *,1101
   if (len(a2)/=3) print *,1102
  end block
end associate
print *,'sngg110p : pass'
end
