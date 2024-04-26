subroutine sub()
integer :: ii
ii = 4
associate(ii=>ii+2)
block
integer :: ii,jj
ii = 8
associate(ii=>ii+2)
block
jj = ii
if(jj==10) then
 print*,'pass'
else
 print*,101
endif
end block
if(ii/=10) print*,104
end associate
if(ii/=8) print*,102
end block
if(ii/=6) print*,105
end associate
if(ii/=4) print*,103
end subroutine

call sub()
end

