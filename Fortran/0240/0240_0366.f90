call s()
print *,'pass'
end
subroutine s()
integer i,j
i = floor(-2.1)
if (i.ne.-3   )print *,'err'
j = floor(2.1)
if (j.ne.2   )print *,'err'
end
