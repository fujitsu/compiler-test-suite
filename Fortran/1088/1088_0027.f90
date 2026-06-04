 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(2):: a1*(k)
   if (len(a1)/=2) print *,1101
  end block
end associate
print *,'sngg109p : pass'
end
