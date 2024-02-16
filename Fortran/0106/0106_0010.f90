integer(kind=8):: b=1
integer(kind=8),dimension(1:1,1:2,1:4) :: a

a=reshape((/(1_8,2_8,b=1,3,1),3_8,4_8/),(/1,2,4/))

print *,a

end
