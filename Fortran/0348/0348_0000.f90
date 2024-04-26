program main
parameter(ix=1000,iy=1000,iz=100)
real(8),dimension(ix, iy  ,iz  ),target :: u=0.0d0, ua=0.0d0

print *,'u(1,1,1)=',u(1,1,1),'u(ix,iy,iz)=',u(ix,iy,iz)
print *,'ua(1,1,1)=',ua(1,1,1),'ua(ix,iy,iz)=',ua(ix,iy,iz)
end
