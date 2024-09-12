integer :: i = 2
i = i -1
associate (a=>i)
goto 2
2 end associate
print *,'PASS'
end
