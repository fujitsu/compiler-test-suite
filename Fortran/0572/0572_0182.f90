
implicit none
block
INTRINSIC:: RANK
integer,parameter ::n1(1,2,3)= 1
integer,parameter ::n2(5,5)= 3
integer,parameter::a = rank(n1) +rank(n2)
if(a.ne.5)print*,"101"
print*,"pass"
end block
end 
