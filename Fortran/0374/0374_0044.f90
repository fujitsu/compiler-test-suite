interface
subroutine subb() bind(c)
end subroutine
end interface

call subb()
print *,"pass"
end
subroutine subb() bind(c)
end subroutine

