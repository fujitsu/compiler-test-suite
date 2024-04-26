call s
print *,'pass'
end
subroutine s
integer, dimension(1) :: i
i = maxloc ((/3,0,4,4/))
if(any(i/=(/3/))) print *,'err'
end
