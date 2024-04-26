call cpu_time(start_time)
x = cos(2.0)
call cpu_time(end_time)
cos_time = end_time - start_time

if (cos_time.eq.10) print *,'err'
print *,'pass'
end
