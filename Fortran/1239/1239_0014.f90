
   character(2) ,allocatable :: aa
call sub(aa)
print *,'pass'
contains

subroutine sub(aa)
 implicit none
   character*2 ,allocatable :: aa
 integer:: n=2
  associate(k=>n)
  block
   allocate(character(len=k):: aa)
   if (len(aa)/=2) print *,1101
  end block
end associate
end
end
