module mod
contains
subroutine subb() bind(c)
end subroutine
subroutine sss()
call ssss(subb)
end subroutine
subroutine ssss(saaa)
external :: saaa
end subroutine
end

print *,"pass"
end
