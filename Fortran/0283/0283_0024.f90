program main
integer::i(4)=0
associate(a=>i)
 a(1)=1
 a(2)=2
 a(3)=3
 a(4)=4
end associate

do k=1,4
if(i(k)==k) print*,'pass4/',k
end do
end
