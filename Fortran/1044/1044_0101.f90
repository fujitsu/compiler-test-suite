call aaaaa
call bbbbb(5)
call ccccc(.true._1)
print *,'pass'
contains
subroutine aaaaa
character(len=5),dimension(5,5)::ch1,ch2,ch3
ch1=' word'
where(ch1 .eq. ' word')
ch2=ifun(ch1)
ch3=adjustl(ch1)
elsewhere
ch2=''
endwhere
if(any(ch2/=reshape((/('word ',k=1,25)/),(/5,5/)))) print *,'err1'
if(any(ch2/=ch3)) print *,'err2'
end subroutine

subroutine bbbbb(i)
character(len=i),dimension(5,5)::ch1,ch2,ch3
ch1='word '
where(ch1 .eq. 'word ')
ch2=ifunb(ch1)
ch3=adjustr(ch1)
elsewhere
ch2=''
endwhere
if(any(ch2/=reshape((/(' word',k=1,25)/),(/5,5/)))) print *,'err3'
if(any(ch2/=ch3)) print *,'err4'
end subroutine

subroutine ccccc(l)
character(len=4),dimension(5,5)::ch1,ch2,ch3
character(len=4)::ch11
logical(kind=1)::l
ch1='word'
ch11='abcd'
where(ch1 .eq. 'word')
ch2=ifunc(ch1,ch11,l)
ch3=merge(ch1,ch11,l)
elsewhere
ch2=''
endwhere
if(any(ch2/=reshape((/('word',k=1,25)/),(/5,5/)))) print *,'err5'
if(any(ch2/=ch3)) print *,'err6'
end subroutine

elemental function ifun(ch1) result(res)
character(len=5),intent(in)::ch1
character(len=5)::res
res=adjustl(ch1)
end function

elemental function ifunb(ch1) result(res)
character(len=5),intent(in)::ch1
character(len=5)::res
res=adjustr(ch1)
end function

elemental function ifunc(ch1,ch2,l) result(res)
character(len=4),intent(in)::ch1,ch2
logical(kind=1),intent(in)::l
character(len=4)::res
res=merge(ch1,ch2,l)
end function
end
