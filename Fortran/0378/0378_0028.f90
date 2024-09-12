type struct2
  integer something
  type(struct2),pointer:: anotherthing(:)
end type struct2
type(struct2),pointer::p1,p2

allocate(p1)
p1%something=1
allocate(p2)
p2%something=2

write(1,*)sizeof(p1)
print *,'pass'
end
