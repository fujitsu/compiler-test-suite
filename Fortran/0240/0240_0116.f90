call test()
print *,'pass'
end
subroutine test()
enum, bind(c)
enumerator :: desktoppc = 2007, notepc = 2009
enumerator netbookpc
end enum
if (desktoppc.ne.2007) print *,'err'
if (notepc.ne.2009) print *,'err'
if (netbookpc.ne.2010) print *,'err'
call t()
contains
subroutine t()
integer, parameter :: desktoppc = 2007, notepc = 2009, netbookpc = 2010
if (desktoppc.ne.2007) print *,'err'
if (notepc.ne.2009) print *,'err'
if (netbookpc.ne.2010) print *,'err'
end subroutine
end
