call aaaaa
call bbbbb
call ccccc
call ddddd
call eeeee
print *,'pass'
contains
subroutine aaaaa
character(len=4)::u_trim3
character(len=5),pointer::ch,chh
integer(kind=4)::i,j
allocate(ch,chh)
i=1
j=5
ch=' a b '
chh=' a b '

if(trim(chh)/=trim(ch)) print *,1
if(trim(chh(1:5))/=trim(ch(1:5))) print *,2
if(trim(chh(i:j))/=trim(ch(i:j))) print *,3
if(trim(chh)/=trim(ch(i:j))) print *,4
if(trim(chh)/=u_trim1(4)) print *,5
if(trim(chh)/=u_trim2(j-i)) print *,6
if(trim(chh)/=u_trim3(len(trim(' a b ')))) print *,7
end subroutine
subroutine bbbbb
character(len=5)::ch(5)
integer(kind=4)::i,j
i=1
j=5
ch=' word'
if(any(adjustl((/(' word',l=1,5)/))/=adjustl(ch))) print *,8
if(any(adjustl((/(' word'(1:5),l=1,5)/))/=adjustl(ch(1:5)))) print *,9
if(any(adjustl((/(' word'(i:j),l=1,5)/))/=adjustl(ch(i:j)))) print *,10
if(any(adjustl((/(' word',l=1,5)/))/=adjustl(ch(i:j)))) print *,11
if(any((/('word ',l=1,5)/)/=adjustl(ch))) print *,111
if(any((/('word ',l=1,5)/)/=u_adl(adjustl(ch)))) print *,112

end subroutine
subroutine ccccc
character(len=5)::ch(5)
integer(kind=4)::i,j
i=1
j=5
ch='word '
if(any(adjustr((/('word ',l=1,5)/))/=adjustr(ch))) print *,12
if(any(adjustr((/('word '(1:5),l=1,5)/))/=adjustr(ch(1:5)))) print *,13
if(any(adjustr((/('word '(i:j),l=1,5)/))/=adjustr(ch(i:j)))) print *,14
if(any(adjustr((/('word ',l=1,5)/))/=adjustr(ch(i:J)))) print *,15
if(any((/(' word',l=1,5)/)/=adjustr(ch))) print *,155
if(any((/(' word',l=1,5)/)/=u_adr(adjustr(ch)))) print *,156
end subroutine
subroutine ddddd
character(len=5)::ch1(5),ch2(5)
integer(kind=4)::i,j
logical(kind=4)::mask
i=1
j=5
mask=.true.
ch1='word '
ch2=' a b '
if(any(merge((/('word ',l=1,5)/),' a b ',.true.)/=merge(ch1,ch2,mask))) print *,16
if(any(merge((/('word '(1:5),l=1,5)/),' a b ',.true.)/=merge(ch1(1:5),ch2,mask))) print *,17
if(any(merge((/('word '(i:j),l=1,5)/),' a b '(1:5),mask)/=merge(ch1(i:j),ch2(1:5),mask))) print *,18
if(any(merge((/('word ',l=1,5)/),' a b ',mask)/=merge(ch1(i:J),ch2(i:j),.true.))) print *,19
if(any(merge((/('word ',l=1,5)/),' a b ',mask)/=u_merge(merge(ch1,ch2,.true.)))) print *,199
end subroutine
subroutine eeeee
character(len=5)::ch(5)
integer(kind=4)::i,j
i=1
j=5
ch=' a b '
if(repeat(' a b ',2)/=repeat(ch(1),i+i)) print *,20
if(repeat(' a b '(1:5),2)/=repeat(ch(1)(1:5),2)) print *,21
if(repeat(' a b '(i:j),i*2)/=repeat(ch(1)(i:j),j-3)) print *,22
if(repeat(' a b ',2)/=repeat(ch(1)(i:j),i+1)) print *,23
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

function u_adl(ch) result(res)
character(len=5),dimension(:)::ch
character(len=5),dimension(5)::res
res=ch
end function

function u_adr(ch) result(res)
character(len=5),dimension(1:)::ch
character(len=5),dimension(5)::res
res=ch
end function

function u_merge(ch) result(res)
character(len=5),dimension(:)::ch
character(len=5),dimension(5)::res
res =ch
end function

end

function u_trim3(i) result(ch)
character(len=*)::ch
ch=' a b'
if(i.ne.4) print *,25
end function


