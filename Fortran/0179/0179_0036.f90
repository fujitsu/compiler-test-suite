call subb()
call subb2()
print *,'pass'
end
subroutine subb()
i=1
if (1.eq.2) then
goto i
end if
end
subroutine subb2()
i=1
10 if (1.eq.2) then
goto i,(10,10,10)
end if
end
