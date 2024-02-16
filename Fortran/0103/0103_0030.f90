integer*8,parameter,DIMENSION(2,2,2)::x=reshape((/1,9,45,45,4,32,12,43/),(/2,2,2/))
integer*8,parameter,DIMENSION(2,2,2)::y=reshape((/0,11,44,46,4,31,43,42/),(/2,2,2/))
integer*8,parameter::k(2,2,2) = DSHIFTR(x,y,64)
if(any(k.ne.reshape([1, 9 ,45, 45, 4, 32, 12, 43],[2,2,2])))print*,"100"
print*,"PASS"
end

