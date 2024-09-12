subroutine test01()
integer ,parameter :: kkk=size([ character(12)     :: ])+1
integer ,parameter :: iii=int(1,size([ character(12)     :: ])+1)
write(100,*)  [ character(12)     :: ]
do i=1,size([ character(12)     :: ])
j=int(i,kind=size([ character(12)     :: ])+1)
j=int(i,size([ character(12)     :: ])+1)
end do
end
call test01()
print *,'pass'
end
