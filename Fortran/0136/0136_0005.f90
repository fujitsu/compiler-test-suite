character(2),allocatable::ch
call s(ch)
print *,"pass"
contains
subroutine s(ch)
character(*),allocatable::ch
allocate(character(*)::ch)
ch="zzz"
if(ch/="zz") print *,"err1"
if(len(ch)/=2) print *,"err2"
end subroutine 
end

