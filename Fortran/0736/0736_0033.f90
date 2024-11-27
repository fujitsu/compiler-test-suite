subroutine sub(i)
intent(out)::i
i=1
end
i=10
call sub(i)
print *,'pass'
end
