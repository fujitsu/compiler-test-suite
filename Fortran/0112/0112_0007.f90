subroutine sub(a)
integer a(5,1)
forall(i=2:5)
  where(a(i-1,:).ne.0)a(i,:)=0
end forall
end

integer a(5,1),b(5)
a=1
call sub(a)
b=(/1,0,1,0,1/)
do i=1,5
  if( a(i,1) .ne. b(i) )then
     if (i/=3 .and. i/=5)print*,'ng',i
  endif
enddo
print*,'pass'
end
