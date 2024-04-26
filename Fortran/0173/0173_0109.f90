subroutine s1

  integer,target :: v(3)=[1,2,3]
  integer,pointer ::z(:)
v=[1,2,3]
z=> v
v(2:)=  z(:2) 
if (any(v/=[1,1,2])) print *,104,v
v=[1,2,3]
z=> v(:2)
v(2:)=  z 
if (any(v/=[1,1,2])) print *,105,v
end
do k=1,100
call s1
end do
print *,'pass'
end
