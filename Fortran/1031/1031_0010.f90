i=1
write(1,*)100
rewind 1
call sub(i+0,i)
if (i/=101)print *,'error-2'
rewind 1
i=1
call sub(i*1,i)
if (i/=101)print *,'error-3'
rewind 1
i=1
call sub((i),i)
if (i/=101)print *,'error-3'
print *,'pass'
end
subroutine sub(j,i)
read(1,*)i
write(2,*)j
i=j+i
rewind 2
read(2,*)jj;if(jj/=1)print *,'error-1'
end
