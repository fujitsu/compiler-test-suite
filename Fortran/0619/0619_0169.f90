subroutine s
character(20)::r1
namelist /nam/ k
k=1
r1=''
write(r1,nml=nam)
if (r1=='')print *,101
end
call s
print *,'pass'
end

