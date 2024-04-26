subroutine s1

TYPE MEMBER (NAME_LEN)
INTEGER, KIND :: NAME_LEN
CHARACTER (LEN = NAME_LEN) :: NAME = '123456789'
INTEGER :: TEAM_NO, HANDICAP = 0
END TYPE MEMBER

TYPE (MEMBER(9)) LEAGUE
if (len(league%name)/=9) print *,102,len(league%name)
if (league%name/='123456789') print *,101,'#'//league%name//'#'
end
call s1
print *,'pass'
end
