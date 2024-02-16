subroutine sub(a)
integer a(5,1)
forall(i=2:5)
  forall(j=1:1)
    a(i,j)=a(i-1,j)+1
  end forall
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
enddo
print*,'pass'
end

