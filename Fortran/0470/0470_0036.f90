recursive subroutine sub()
procedure(sub),pointer :: p=>sub
p=>sub
end subroutine
print *,'pass'
end
