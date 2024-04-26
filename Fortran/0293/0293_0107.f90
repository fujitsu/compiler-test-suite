real*4 ::r1(10),r2(10),r3(10),r4(10)

do i=1,10
  r1(i) = i
  r2(i) = 11 -i
enddo

write(8,*),(r1(i),i=1,10,1)
rewind 8

read(8,*),(r3(i),i=1,10,1)
print *,'pass'
end
