program main

 real          ,dimension(2,2,2:1) ::a = 1
 real          ,dimension(2,0)::a1 
 real          ,dimension(2,0)::a2
 real          ,dimension(2,2)::a3
 real,parameter,dimension(2,2,2:1) ::b = 1
 real,parameter,dimension(2,0)::b1 = maxval(b,dim=1)
 real,parameter,dimension(2,0)::b2 = maxval(b,dim=2)
 real,parameter,dimension(2,2)::b3 = maxval(b,dim=3)

 a1= maxval(a,dim=1)
 a2= maxval(a,dim=2)
 a3= maxval(a,dim=3)

write(1,*)a1,b1
write(1,*)a2,b2
write(1,*)a3,b3
print *,'pass'
end
