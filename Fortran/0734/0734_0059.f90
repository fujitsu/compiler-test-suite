integer :: a(20)
namelist /input/a
a=99
write(11,'(a)')'&input a(1)=1 a(2)=2 a(3)=3 a(4)=4 a(1 )=5 a(12)=10 /'
rewind 11
read(11,NML=input)
if (any(a/=(/5,2,3,4,99,99,99,99,99,99,99,10,99,99,99,99,99,99,99,99/)))print *,'error'
write(12,NML=input)
print *,'pass'
end
