call sub(3)

end

subroutine sub(ii)

integer :: i,iii
integer,parameter :: ip = 2
character         :: c
character(len=5)  :: cc
character(len=ip) :: ccc
character(len=ii) :: cccc

i = 1
iii = 1

print *,[character(len('aaa'))  :: [['abcdefg'],['hijklmn'],'opqrstu']]

print *,[[character (len = iii) :: 'a'], 'bcde', [character (len = iii) :: 'fg']]

print *,[[character (len(c))    :: 'a'], 'bcde', [character (len(c))    :: 'fg']]

print *,[[character (len(cc))   :: 'a'], 'bcde', [character (len(cc))   :: 'fg']]

print *,[[character (len(ccc))  :: 'a'], 'bcde', [character (len(ccc))  :: 'fg']]

print *,[[character (len(cccc)) :: 'a'], 'bcde', [character (len(cccc)) :: 'fg']]

print *,[[character (len = iii) :: 'a'], [character (len = iii) :: 'fg']]
print *,[[character (len(c))    :: 'a'], [character (len(c))    :: 'fg']]
print *,[[character (len(cc))   :: 'a'], [character (len(cc))   :: 'fg']]
print *,[[character (len(ccc))  :: 'a'], [character (len(ccc))  :: 'fg']]
print *,[[character (len(cccc)) :: 'a'], [character (len(cccc)) :: 'fg']]

print *,[[character (len = iii) :: 'a'], [character (len = iii) :: 'fg']]
print *,[[character (len = iii) :: 'a'], [character (len(c))    :: 'fg']]
print *,[[character (len = iii) :: 'a'], [character (len(cc))   :: 'fg']]
print *,[[character (len = iii) :: 'a'], [character (len(ccc))  :: 'fg']]
print *,[[character (len = iii) :: 'a'], [character (len(cccc)) :: 'fg']]

print *,[[character (len(c))    :: 'a'], [character (len = iii) :: 'fg']]
print *,[[character (len(c))    :: 'a'], [character (len(c))    :: 'fg']]
print *,[[character (len(c))    :: 'a'], [character (len(cc))   :: 'fg']]
print *,[[character (len(c))    :: 'a'], [character (len(ccc))  :: 'fg']]
print *,[[character (len(c))    :: 'a'], [character (len(cccc)) :: 'fg']]

print *,[[character (len(cc))   :: 'a'], [character (len = iii) :: 'fg']]
print *,[[character (len(cc))   :: 'a'], [character (len(c))    :: 'fg']]
print *,[[character (len(cc))   :: 'a'], [character (len(cc))   :: 'fg']]
print *,[[character (len(cc))   :: 'a'], [character (len(ccc))  :: 'fg']]
print *,[[character (len(cc))   :: 'a'], [character (len(cccc)) :: 'fg']]

print *,[[character (len(ccc))  :: 'a'], [character (len = iii) :: 'fg']]
print *,[[character (len(ccc))  :: 'a'], [character (len(c))    :: 'fg']]
print *,[[character (len(ccc))  :: 'a'], [character (len(cc))   :: 'fg']]
print *,[[character (len(ccc))  :: 'a'], [character (len(ccc))  :: 'fg']]
print *,[[character (len(ccc))  :: 'a'], [character (len(cccc)) :: 'fg']]

print *,[[character (len(cccc)) :: 'a'], [character (len = iii) :: 'fg']]
print *,[[character (len(cccc)) :: 'a'], [character (len(c))    :: 'fg']]
print *,[[character (len(cccc)) :: 'a'], [character (len(cc))   :: 'fg']]
print *,[[character (len(cccc)) :: 'a'], [character (len(ccc))  :: 'fg']]
print *,[[character (len(cccc)) :: 'a'], [character (len(cccc)) :: 'fg']]

end
