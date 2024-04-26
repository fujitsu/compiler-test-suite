call test()
print *,'pass'
end
subroutine test()
real x
call cpu_time(start_time)
x = cos(2.0)
call cpu_time(end_time)
cos_time = end_time - start_time
x=x
if (.false.) print *,cos_time
end
