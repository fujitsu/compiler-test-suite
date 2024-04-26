print*,ss()
print*,ss()
print*,ss()

contains
function ss()
implicit none
character(4) :: ss
integer,save :: tt=0
tt=tt+1
Block
save
Integer :: pp=0,gg=0
pp=pp+1
gg=gg+1

ss='pass'
if(pp/=tt .or. gg/=tt) ss='fail'
End block

end function
end

