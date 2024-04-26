integer :: ii
ii = 4
block
integer :: ii,jj
ii = 8
associate(ii=>ii+2)
jj = ii
if(jj==10) then
 print*,'pass'
else
 print*,101
endif
end associate
if(ii/=8) print*,102
end block
if(ii/=4) print*,103

end

