character,parameter :: i='a'
call sub('a')
call sub('a'(1:1))
call sub(i)
print *,'pass'
end

subroutine sub(i)
character :: i(1) 
end 
