subroutine s1(x)
implicit character(*)(x)
value x
integer x
x=1
end 
interface 
subroutine s1(x)
implicit character(*)(x)
value x
integer x
end  subroutine
end interface
call s1(1)
print *,'pass'
end