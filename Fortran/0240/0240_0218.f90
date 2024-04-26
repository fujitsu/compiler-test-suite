call s
print *,'pass'
end
subroutine s
integer, dimension(1) :: i
i = minloc ((/3,0,4,4/))
if(any(i/=[2])) print *,'err'
end
