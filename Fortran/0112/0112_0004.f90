subroutine sub(a)
integer a(5)
forall(i=2:5)
  a(i)=a(i-1)+1
end forall
end

integer a(5),b(5)
a=1
call sub(a)
b=(/1,2,3,4,5/)
do i=1,5
  if(a(i).ne.b(i))then
      if (i<3)print*,'ng',i
  endif
end do
print*,'pass'
end
