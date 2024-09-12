type ty(k1,k2,k3,k4)
integer,kind :: k1
integer,kind :: k2
integer,kind :: k3
integer,kind :: k4
integer :: arr1(k1+k2+k3+k4)
end type

type(ty(k1=2,k2=2,k3=2,k4=2)):: obj
obj%arr1=10
if(size(obj%arr1) .eq. 8 .AND. all(obj%arr1 .eq. 10)) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end
