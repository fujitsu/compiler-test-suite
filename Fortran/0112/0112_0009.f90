subroutine sub(a)
integer a(5)
forall(i=2:5)
  forall(j=1:a(i-1)) 
    a(i)=0
  end forall
end forall
end

integer a(5),b(5)
a=1
call sub(a)
b=(/1,0,1,0,1/)
do i=1,5
  if(a(i).ne.b(i))print*,'ng',i
enddo
print*,'pass'
end
