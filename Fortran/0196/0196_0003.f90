implicit none
enum, bind(c)
enumerator :: desktoppc = 2007, notepc = 2009
enumerator netbookpc
end enum
if (desktoppc/=2007) print *,'error-1'
if (notepc/=2009) print *,'error-2'
if (netbookpc/=2010) print *,'error-r3'
print *,'pass'
end
