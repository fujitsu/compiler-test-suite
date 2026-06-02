 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character*(k):: a1
   if (len(a1)/=2) print *,1101
  end block
end associate
print *,'pass'
end
