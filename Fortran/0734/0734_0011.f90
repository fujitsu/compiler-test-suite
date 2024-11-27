character(len=0) null

write (1,*) LGT(null,null)
write (1,*) LLT(null,null)
call x
print *,'pass'
end
subroutine x
logical g1,g2
rewind 1
read(1,*) g1
if (g1)print *,'error-1'
read(1,*) g2
if (g2)print *,'error-4'
end
