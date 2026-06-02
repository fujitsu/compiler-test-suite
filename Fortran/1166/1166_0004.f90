 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(k):: c
   dimension :: c(2)
   if (size(c)/=2) print *,122
   if (len (c)/=2) print *,123,len(c)
  end block
end associate
print *,'sngg492q : pass'
end
