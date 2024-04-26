program main
integer::i(5),x(3)
i=0

associate(a=>i(1:3))
 a=3
 x=a
end associate

if(all(i(1:3) == 3 .and. x==3) .and. all(i(4:5)==0)) i(1:3)=0
if(all(i==0)) print*,'pass'
end
