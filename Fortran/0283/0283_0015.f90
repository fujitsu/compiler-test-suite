program main
integer::i(5)=0

associate(a=>i)
 a=5
 a(3)=3
end associate

if(i(3)==3 .and. i(2)==5) print*,'pass'
end
