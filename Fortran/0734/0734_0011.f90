character(len=0) null

write (3,*) LGT(null,null)
write (3,*) LLT(null,null)
call x
print *,'pass'
end
subroutine x
logical g1,g2
rewind 3
read(3,*) g1
if (g1)print *,'error-1'
read(3,*) g2
if (g2)print *,'error-4'
end
