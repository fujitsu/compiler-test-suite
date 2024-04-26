parameter(k4=2)
real(k4),parameter:: a(2,3,4)=reshape((/(i,i=1,2*3*4)/),(/2,3,4/))
real(k4),dimension(2,3,4):: a1,a2
a1=cshift(a,1,1)
print *,'pass'
end
