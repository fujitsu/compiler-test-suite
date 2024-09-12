character(kind=1,len=2) :: cha="a"
character(kind=4,len=2) :: ccc="a"
call sub1(max(cha,cha,1_"a"))
call sub1(min(cha,cha,1_"a"))
call sub2(max(ccc,ccc,4_"a"))
call sub2(min(ccc,ccc,4_"a"))
print *,"pass"
contains
subroutine sub1(ccc)
character(kind=1,len=2),optional :: ccc
end subroutine
subroutine sub2(ccc)
character(kind=4,len=2),optional :: ccc
end subroutine
end 
