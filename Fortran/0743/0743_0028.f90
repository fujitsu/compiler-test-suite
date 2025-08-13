integer (1) ::a1=1
integer (2) ::a2=2
integer (4) ::a4=3
integer (8) ::a8=4
logical,parameter::t=.true.
logical (1) ::b1=t
logical (2) ::b2=t
logical (4) ::b4=t
logical (8) ::b8=t
real (4) ::c4=1
real (8) ::c8=2
real (16)::c16=4
write(21,*)a1,a2,a4,a8
write(21,*)1_1,2_2,4_4,8_8
write(21,*)b1,b2,b4,b8
write(21,*).true._1,.true._2,.true._4,.true._8
write(21,*)c4,c8,c16
write(21,*)1._4,2._8,3._16
print *,'pass'
end
