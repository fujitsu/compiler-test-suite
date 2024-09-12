real,dimension(100)::a1,a2,a3,a4,a5,a6
a1=0;a2=0;a3=0;a4=0;a5=0;a6=0
do i=1,100
  a1(i)=a1(i)-1
  a2(i)=a2(i)-1
  a3(i)=a3(i)-1
  a4(i)=a4(i)-1
  a5(i)=a5(i)-1
  a6(i)=a6(i)-1
end do
do i=1,100
  if(a1(i)/=-1.0)print*,'ng'
  if(a2(i)/=-1.0)print*,'ng'
  if(a3(i)/=-1.0)print*,'ng'
  if(a4(i)/=-1.0)print*,'ng'
  if(a5(i)/=-1.0)print*,'ng'
  if(a6(i)/=-1.0)print*,'ng'
end do
print*,'pass'
end
