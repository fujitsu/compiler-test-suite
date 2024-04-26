subroutine s1
integer,allocatable::source,stat
allocate(source,stat)
source=1
stat=2
if (source/=1)print *,101
if (stat/=2)print *,102
deallocate(source,stat)
allocate(source,source=3,stat=k)
if (source/=3)print *,201
if (k/=0)print *,202
allocate(stat,stat=k,source=4)
if (stat  /=4)print *,401
if (k/=0)print *,402
end
call s1
print *,'pass'
end
