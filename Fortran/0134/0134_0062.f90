print *,"pass"
end


module mod
implicit character(:) (a)
contains
subroutine aaa(aa)
external :: aa
end subroutine
end

