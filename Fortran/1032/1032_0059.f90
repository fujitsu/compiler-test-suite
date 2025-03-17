subroutine sub
write(1,*)1
entry ent
write(1,*)2
entry ent2
write(1,*)3
return
end
call sub
call ent
call ent2
rewind 1
read(1,*) i;if (i/=1)print *,'error-1'
read(1,*) i;if (i/=2)print *,'error-2'
read(1,*) i;if (i/=3)print *,'error-3'
read(1,*) i;if (i/=2)print *,'error-4'
read(1,*) i;if (i/=3)print *,'error-5'
read(1,*) i;if (i/=3)print *,'error-6'
print *,'pass'
end
