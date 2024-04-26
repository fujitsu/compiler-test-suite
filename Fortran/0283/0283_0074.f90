program main
integer::i(5),x
i=0

associate(a=>i(3))
 a=3
 x=a
end associate

if(i(3) == 3 .and. x==3) i(3)=0
if(all(i==0)) print*,'pass'
end
