call s
print *,'pass'
end
subroutine s
integer x(3,2),result(3,2)
x = reshape((/1,2,3,4/), (/3,2/), pad=(/0/))
result(1,1)=1
result(2,1)=2
result(3,1)=3
result(1,2)=4
result(2,2)=0
result(3,2)=0
if(any(x/=result)) print *,'err'
end
