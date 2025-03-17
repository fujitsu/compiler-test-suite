call aaaaa
call bbbbb
call ccccc
call ddddd
call eeeee

print *,'pass'
contains
subroutine aaaaa
character(len=5),dimension(5,5)::ch1
character(len=4),dimension(5,5)::ch2
ch1=' a b '
forall(i=1:5,j=1:5)
ch2(i,j) = ifun(ch1(i,j))
end forall
if(any(ch2/=reshape((/(' a b',k=1,25)/),(/5,5/)))) print *,'err1'
end subroutine

subroutine bbbbb
character(len=5),dimension(5,5)::ch1
character(len=5),dimension(5,5)::ch2
ch1=' word'
k=5
forall(i=1:k,j=1:k)
ch2(i,j) = ifunb(ch1(i,j))
end forall
if(any(ch2/=reshape((/('word ',k=1,25)/),(/5,5/)))) print *,'err2'
end subroutine

subroutine ccccc
character(len=5),dimension(5,5)::ch1
character(len=5),dimension(5,5)::ch2
ch1='word '
k=5
l=1
forall(i=l:k,j=l:k)
ch2(i,j) = ifunc(adjustr(ch1(i,j)))
end forall
if(any(ch2/=reshape((/(' word',k=1,25)/),(/5,5/)))) print *,'err3'
end subroutine

subroutine ddddd
character(len=5),dimension(5,5)::ch1
character(len=5),dimension(5,5)::ch2
ch1='word '
k=5
l=1
forall(i=l:k,j=l:k)
ch2(i,j) = ifund(ch1(i,j),' a b ',.true.)
end forall
if(any(ch2/=reshape((/('word ',k=1,25)/),(/5,5/)))) print *,'err4'
end subroutine

subroutine eeeee
character(len=3),dimension(5,5)::ch1
character(len=6),dimension(5,5)::ch2
ch1='abc'
k=5
l=1
forall(i=l:k,j=l:k)
ch2(i,j) = ifune(ch1(i,j),2)
end forall
if(any(ch2/=reshape((/('abcabc',k=1,25)/),(/5,5/)))) print *,'err5'
end subroutine

pure function ifun(ch) result(rch)
character(len=5),intent(in)::ch
character(len=4)::rch
rch=trim(ch)
end function

pure function ifunb(ch) result(rch)
character(len=5),intent(in)::ch
character(len=5)::rch
rch=adjustl(ch)
end function

pure function ifunc(ch) result(rch)
character(len=5),intent(in)::ch
character(len=5)::rch
rch=ch
end function

pure function ifund(ch1,ch2,l) result(rch)
character(len=5),intent(in)::ch1
character(len=5),intent(in)::ch2
logical(kind=4),intent(in)::l
character(len=5)::rch
rch=merge(ch1,ch2,l)
end function

pure function ifune(ch,ii) result(rch)
character(len=3),intent(in)::ch
integer(kind=4),intent(in)::ii
character(len=6)::rch
rch=repeat(ch,ii)
end function

end
