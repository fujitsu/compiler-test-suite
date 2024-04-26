subroutine s1
integer,target::y(3)=[1,2,3]
integer,pointer,contiguous::p1(:)

associate (a=>y(2:3))
p1=>a
if (any(p1/=y(2:3))) print *,114
end associate
associate (a=>y(2:3))
p1(1:2)=>a
if (any(p1/=y(2:3))) print *,115
end associate
end
call s1
print *,'pass'
end
