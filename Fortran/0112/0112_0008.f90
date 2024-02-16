subroutine sub(a)
integer a(5,1)
integer b(5,1)
data b/5*1/
forall(i=2:5)
  where(b(i,:).ne.0) a(i,:)=a(i-1,:)+1
end forall
end

integer a(5,1),b(5)
a=1
call sub(a)
b=(/1,2,3,4,5/)
do i=1,5
  if(a(i,1).ne.b(i))then
     if (i<3)print*,'ng',i
  endif
end do
print*,'pass'
end
