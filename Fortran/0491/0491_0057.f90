interface
   subroutine s1() bind(c,name='ss1')
   end 
end interface
call s1
print *,"pass"
end
subroutine s1() bind(c,name='ss1')
end 
