integer,target:: t=1

integer,pointer:: p1
data p1/t/
integer,pointer:: p2=> t
integer,pointer:: p3 / t /
print *,'pass'
end
