real,allocatable::i
if(allocated(i)) print *,'err'
i=func(2)
if(.not.allocated(i)) print *,'err'
if(i/=3.0) print *,'err'
print *,'pass'
contains
function func(i) result(j)
j=i+1
end function
end
