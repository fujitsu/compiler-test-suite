 implicit none
 integer:: n=2
  associate(k=>n)
  block
!234567890123
   integer :: a2(k) ,a3(2)
   !ok character(k),dimension(k):: a2*(3),a3
   if (size(a2)/=2) print *,102
   if (size(a3)/=2) print *,103
  end block
end associate
print *,'pass'
end
