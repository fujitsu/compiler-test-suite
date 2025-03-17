call aaaaa
call bbbbb
call ccccc
call ddddd
call eeeee
print *,'pass'
contains
subroutine aaaaa
character(len=4)::u_trim3
character(len=5)::ch
integer(kind=4)::i,j
i=1
j=5
ch=' a b '
if(trim(' a b ')/=trim(ch)) print *,1
if(trim(' a b '(1:5))/=trim(ch(1:5))) print *,2
if(trim(' a b '(i:j))/=trim(ch(i:j))) print *,3
if(trim(' a b ')/=trim(ch(i:j))) print *,4
if(trim(' a b ')/=u_trim1(4)) print *,5
if(trim(' a b ')/=u_trim2(j-i)) print *,6
if(trim(' a b ')/=u_trim3(len(trim(' a b ')))) print *,7
end subroutine
subroutine bbbbb
character(len=5)::ch
integer(kind=4)::i,j
i=1
j=5
ch=' word'
if(adjustl(' word')/=adjustl(ch)) print *,8
if(adjustl(' word'(1:5))/=adjustl(ch(1:5))) print *,9
if(adjustl(' word'(i:j))/=adjustl(ch(i:j))) print *,10
if(adjustl(' word')/=adjustl(ch(i:j))) print *,11
end subroutine
subroutine ccccc
character(len=5)::ch
integer(kind=4)::i,j
i=1
j=5
ch='word '
if(adjustr('word ')/=adjustr(ch)) print *,12
if(adjustr('word '(1:5))/=adjustr(ch(1:5))) print *,13
if(adjustr('word '(i:j))/=adjustr(ch(i:j))) print *,14
if(adjustr('word ')/=adjustr(ch(i:J))) print *,15
end subroutine
subroutine ddddd
character(len=5)::ch1,ch2
integer(kind=4)::i,j
logical(kind=4)::mask
i=1
j=5
mask=.true.
ch1='word '
ch2=' a b '
if(merge('word ',' a b ',.true.)/=merge(ch1,ch2,mask)) print *,16
if(merge('word '(1:5),' a b ',.true.)/=merge(ch1(1:5),ch2,mask)) print *,17
if(merge('word '(i:j),' a b '(1:5),mask)/=merge(ch1(i:j),ch2(1:5),mask)) print *,18
if(merge('word ',' a b ',mask)/=merge(ch1(i:J),ch2(i:j),.true.)) print *,19
end subroutine
subroutine eeeee
character(len=5)::ch
integer(kind=4)::i,j
i=1
j=5
ch=' a b '
if(repeat(' a b ',2)/=repeat(ch,i+i)) print *,20
if(repeat(' a b '(1:5),2)/=repeat(ch(1:5),2)) print *,21
if(repeat(' a b '(i:j),i*2)/=repeat(ch(i:j),j-3)) print *,22
if(repeat(' a b ',2)/=repeat(ch(i:j),i+1)) print *,23
end subroutine

function u_trim1(i) result(ch)
character(len=4)::ch
ch=' a b'
if(i.ne.4) print *,24
end function

function u_trim2(i) result(ch)
character(len=i)::ch
ch=' a b'
end function
end

function u_trim3(i) result(ch)
character(len=*)::ch
ch=' a b'
if(i.ne.4) print *,25
end function

