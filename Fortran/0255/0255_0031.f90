real,parameter::arr(1) =[8.0]
Character(LEN=int(NORM2(arr)))::ch;
real(kind=int(NORM2(arr)))::r1;  
if(len(ch).ne.8)print*,"101"
if(kind(r1).ne.8)print*,"102"
print*,"pass"
end
