subroutine s() bind(c,name='aa')
end
subroutine s() 
end
call s
print *,'pass'
end
