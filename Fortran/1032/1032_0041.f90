subroutine sub(i)
entry       ent(i)
intent(out)::i
i=1
call subx(i)
end
subroutine subx(i)
if (i/=1)write(6,*) "NG"
end
i=10
call sub(i)
i=10
call ent(i)
print *,'pass'
end
