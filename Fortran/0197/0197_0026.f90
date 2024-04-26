procedure(character*2):: a
if (a()/='12') print *,101
print *,'pass'
end

function a()
character(2)::a
a='12'
end

