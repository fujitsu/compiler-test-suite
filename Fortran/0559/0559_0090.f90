type ty(k1,k2,k3,k4)
integer,kind :: k1=2
integer,kind :: k2=2
integer,kind :: k3
integer,kind :: k4
integer :: arr1(k1+k2+k3+k4)
end type

type(ty(k3=2,k4=2)):: obj
obj%arr1=10
if(size(obj%arr1) .eq. 8 ) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end
