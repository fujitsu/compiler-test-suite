call aaa
call bbb
print *,"pass"
contains
subroutine aaa
character(:),allocatable::ch
allocate(character(2)::ch)
ch="abc"
if(ch/="ab") print *,"err"
end subroutine
subroutine bbb
character(:),allocatable::ch(:)
allocate(character(2)::ch(2))
ch=["abc","cde"]
if(any(ch/=["ab","cd"])) print *,"err"
end subroutine

end
