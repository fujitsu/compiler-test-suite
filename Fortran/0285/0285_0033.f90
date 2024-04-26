type tt
 character(len=10)::string='xxxpassxxx'
end type

integer::arr(3)=0

type(tt) :: obj

associate(aa=>obj%string(2:9))
 if(aa(1:2)/='xx' .and. aa(7:8)/='xx') print*,101

 do i=1,3
  if(arr(i)==0) print*,aa(3:6),i,'/3' 
 end do
end associate
end
