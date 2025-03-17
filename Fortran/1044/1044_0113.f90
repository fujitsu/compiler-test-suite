call aaaaa
print *,'pass'
contains
subroutine aaaaa
character(len=2)::ch1
character(len=3)::ch2
character(len=4)::ch3
character(len=1)::ch4
ch1='ab'
ch2='cde'
ch3='fghi'
ch4='j'
call bbbbb(ch1,ch2,ch3,ch4)
call ccccc(ch1,ch2,ch3,ch4)
end subroutine
subroutine bbbbb(ch1,ch2,ch3,ch4)
character(len=*)::ch1,ch2,ch3,ch4
if(merge(ch1//ch2,ch3//ch4,.true.).ne.'abcde') print *,'err1'
end subroutine
end
subroutine ccccc(ch1,ch2,ch3,ch4)
character(len=*)::ch1,ch2,ch3,ch4
if(merge(ch1//ch2,ch3//ch4,.true.).ne.'abcde') print *,'err1'
end subroutine


