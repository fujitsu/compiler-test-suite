block
 integer,parameter,dimension(*)::ii= [1,2,3,4]
  a:block
  integer::jj
  jj = ii(1) + ii(2) + ii(3) + ii(4)
  if((jj==10).and. size(ii)==4)print*,"1:pass"
    b:block
    kk=ii(4)+ii(4)
    end block b
    if(kk==8)print*,"2:pass"
    end block a
block
integer::kk
kk=ii(2) + ii(3)
if(kk==5)print*,"3:pass"
end block
end block
end
