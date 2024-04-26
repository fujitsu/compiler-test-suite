character(len=:),allocatable::ch
b1:block
 integer,allocatable::jj(:)
 allocate(jj(2))

 b2:block
  integer,allocatable::ii(:)
  allocate(character(len=5)::ch)
  allocate(ii(2))
  ch = "11111"
  exit b2
 end block b2
 ch = "22222"

 goto 100
end block b1

100 if(ch /= "22222") print*, "911"
print*, "PASS"
end
