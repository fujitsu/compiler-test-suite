integer,pointer,dimension(:)::p
allocate(p(100))
p(1)=10
do k=1,99
  call sub(p,p,k)
end do
if (any(p/=(/(k,k=10,109)/)))print *,'error'
print *,'pass'
contains
pure subroutine sub(t1,t2,i)
integer,intent(in)::i
integer,pointer,dimension(:)::t1,t2
t1(i+1)=t2(i)+1
end subroutine
end
