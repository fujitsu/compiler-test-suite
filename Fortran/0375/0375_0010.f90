common /aa/ i(1000)
common /bb/ j(1000)
namelist /xxx/i,j
i=0
i(1)=1
data j(2)/2/
call ss
write(2,*)i(1),j(2),loc(i),loc(j)
write(1,xxx)
print *,'pass'
end
subroutine ss
common /aa/i
common /bb/ jj,j
write(2,*)'ss :',i,j,loc(i),loc(jj)
end
