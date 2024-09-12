subroutine s1
enum, bind(c)
  enumerator :: desktoppc_1 = 2007, notepc_1 = 2009
  enumerator netbookpc_1
end enum
integer, parameter :: desktoppc_2 = 2007, &
      & notepc_2 = 2009, netbookpc_2 = 2010

if (kind(desktoppc_1)/=kind(desktoppc_2))print *,101
if (kind(notepc_1)/=kind(notepc_2))print *,102
if (kind(netbookpc_1)/=kind(netbookpc_2))print *,103
if ((desktoppc_1)/=(desktoppc_2))print *,201
if ((notepc_1)/=(notepc_2))print *,202
if ((netbookpc_1)/=(netbookpc_2))print *,203
end
call s1
print *,'pass'
end
