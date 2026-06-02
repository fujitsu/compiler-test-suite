call sub()
print *,'pass'
end
recursive subroutine sub()
procedure(),pointer :: p=>sub
if (1.eq.2) call sub()
if (1.eq.2) call p()
end

recursive subroutine suba()
procedure(),pointer :: p=>suba
call suba
end
