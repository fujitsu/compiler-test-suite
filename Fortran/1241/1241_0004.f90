interface bbb
end interface
interface aaa
subroutine aaa
end subroutine aaa
end interface
interface
   function fun() bind(c)
   end function fun
end interface
print *,'sngtp05:pass'
end program
