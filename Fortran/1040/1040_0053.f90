integer i(4)
i=2
if (any(ff(i)/=5))print *,'error-1'
print *,'pass'
contains
recursive function ff (n) result (fv)
implicit integer (a-z)
integer,dimension(:)::n
integer fv(size(n))
if (any(n/=-1)) then
fv = 5
else
fv =  ff (n-1)
end if
end function ff
end
