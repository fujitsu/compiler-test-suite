procedure(type(integer)):: a
if (a()/=1) print *,101
print *,'pass'
end

function a()
integer::a
a=1
end

