program main
integer,dimension(10)::num=2
integer::res=0

do i=10,2,-2
 associate(a=>2+num(i)+2)
  res=res+a+5
 end associate
end do

if(res==55) then
 print*,'pass'
else
 print*,'fail'
endif
end
