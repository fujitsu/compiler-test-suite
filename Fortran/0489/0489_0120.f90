integer,     target:: a1
integer,pointer         :: p1
integer,pointer         :: p2
integer,          target:: a2
data p1/ a1 /
data p2/ a1 /
common /cmn2/p2,a2
common /cmn1/p1,a1
if (associated(p1,a1)) then
else
print *,201
endif
if (associated(p2,a1)) then
else
print *,202
endif
print *,'pass'
end
