subroutine s1
integer,dimension(3)::a
a=0

associate( p=>a+1,w=>c)

end associate
end
call       s1
print *,'pass'
end
