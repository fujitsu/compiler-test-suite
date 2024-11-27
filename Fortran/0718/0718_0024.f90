module mod01
contains
subroutine aaa01() !$pragma c(aaa01)
end subroutine
subroutine bbb01() !$pragma c(bbb01)
end subroutine
subroutine ccc01() !$pragma c(ccc01)
end subroutine
end module
module mod02
contains
subroutine aaa02() bind(C) !$pragma c(aaa02)
end subroutine
subroutine bbb02() bind(C) !$pragma c(bbb02)
end subroutine
subroutine ccc02() bind(C) !$pragma c(ccc02)
end subroutine
end module
end
