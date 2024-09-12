interface operator(.sin.)
function ifun(i,j)
intent(in):: i,j
logical :: i
end function
end interface
intrinsic sin
print *,'pass'
end
