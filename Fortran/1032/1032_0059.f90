subroutine sub
write(15,*)1
entry ent
write(15,*)2
entry ent2
write(15,*)3
return
end
call sub
call ent
call ent2
rewind 15
read(15,*) i;if (i/=1)print *,'error-1'
read(15,*) i;if (i/=2)print *,'error-2'
read(15,*) i;if (i/=3)print *,'error-3'
read(15,*) i;if (i/=2)print *,'error-4'
read(15,*) i;if (i/=3)print *,'error-5'
read(15,*) i;if (i/=3)print *,'error-6'
print *,'pass'
end
