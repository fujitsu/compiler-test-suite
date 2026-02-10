interface
function f1(p2,c1)
character(*),optional,pointer:: p2
character(2)::f1
character(*):: c1
end function
function f2(p2,c1)
character(*),optional,pointer:: p2
character(2)::f2
character(*):: c1
end function
end interface

character(1):: c1
c1='a'
if (f1(c1=c1)/='a') stop '1-1'
if (f2(c1=c1)/='aa') stop '1-2'
print *,'PASS'
end

