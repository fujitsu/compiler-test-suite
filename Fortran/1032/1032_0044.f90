subroutine sub()
intent(out)::i
return
entry       ent(i)
i=1
call subx(i)
entry       ent2(i)
end
subroutine subx(i)
if (i/=1)write(6,*) "NG"
end
i=10
call sub()
i=10
call ent(i)
i=10
call ent2(i)
print *,'pass'
end
