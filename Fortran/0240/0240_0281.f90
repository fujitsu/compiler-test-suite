call s
print *,'pass'
end
subroutine s
integer i(3)
integer b(10,-2:10,10)
i = shape(b(1:9,-2:3,:))
if(any(i/=(/9,6,10/))) print *,'err'
end
