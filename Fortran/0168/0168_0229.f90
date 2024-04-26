subroutine sub(k)
integer,dimension(*)::k
k(1)=1
do i=1,100
  k(i)=i
end do
end
integer,dimension(100)::k
call sub(k)
print *,'pass'
end
