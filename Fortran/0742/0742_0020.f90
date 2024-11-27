subroutine x
logical ::logi
character(len=3)::char
logi=.false.
char=merge("L  ","-L ",logi)
if (char/="-L ")print *,'error'
end
call x
print *,'pass'
end
