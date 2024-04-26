subroutine s1
TYPE DATE
INTEGER DAY
CHARACTER (LEN = 5) MONTH
INTEGER :: YEAR = 2008
END TYPE DATE

TYPE (DATE), PARAMETER :: TODAY = DATE (21, "Feb.", 2009)

TYPE SINGLE_SCORE
TYPE(DATE) :: PLAY_DAY = TODAY
INTEGER SCORE
TYPE(SINGLE_SCORE), POINTER :: NEXT => NULL ( )
END TYPE SINGLE_SCORE

TYPE MEMBER (NAME_LEN)
INTEGER, KIND :: NAME_LEN
CHARACTER (LEN = NAME_LEN) :: NAME = ''
INTEGER :: TEAM_NO, HANDICAP = 0
TYPE (SINGLE_SCORE), POINTER :: HISTORY => NULL ( )
END TYPE MEMBER

TYPE (MEMBER(9)) LEAGUE (36)
TYPE (MEMBER(9)) :: ORGANIZER = MEMBER (9) ("I. Manage",1,5,NULL ( ))

ALLOCATE (ORGANIZER % HISTORY)

do n=1,36
if (league(n)%name/='') print *,n,101
if (league(n)%HANDICAP/=0) print *,n,103
if (associated(league(n)%HISTORY)) print *,n,104

allocate( league(n)% HISTORY)
if (league(n)%HISTORY%PLAY_DAY%DAY/= 21) print *,n,201
if (league(n)%HISTORY%PLAY_DAY%MONTH /= 'Feb.') print *,n,202
if (league(n)%HISTORY%PLAY_DAY%YEAR  /= 2009 ) print *,n,203
if (associated(league(n)%HISTORY%NEXT)) print *,n,204
end do
n=1
if (ORGANIZER%name/='I. Manage') print *,n,111
if (ORGANIZER%TEAM_NO /=1) print *,n,111
if (ORGANIZER%HANDICAP/=5) print *,n,113
if (.not.associated(ORGANIZER%HISTORY)) print *,n,114

if (ORGANIZER%HISTORY%PLAY_DAY%DAY/= 21) print *,n,211
if (ORGANIZER%HISTORY%PLAY_DAY%MONTH /= 'Feb.') print *,n,212
if (ORGANIZER%HISTORY%PLAY_DAY%YEAR  /= 2009 ) print *,n,213
if (associated(ORGANIZER%HISTORY%NEXT)) print *,n,214
end
call s1
print *,'pass'
end
