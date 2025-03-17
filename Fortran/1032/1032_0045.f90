subroutine sub(i)
intent(out)::i
i=1
call subx(i)
return
entry       ent()
return
entry       ent2(i)
i=1
call subx(i)
end
subroutine subx(i)
if (i/=1)write(6,*) "NG"
end
i=10
call sub(i)
i=10
call ent()
i=10
call ent2(i)
print *,'pass'
end
