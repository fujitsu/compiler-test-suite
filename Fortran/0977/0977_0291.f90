call aaaaa
call bbbbb
print *,'pass'
end
subroutine aaaaa
integer(kind=4)::i4
integer(kind=8)::i8
write(11) 5
write(12) 6
write(13) 7
rewind(7)
rewind(11,IOSTAT=i4)
rewind(12,IOSTAT=i8)
rewind(13,ERR=10)
if(i4.ne.0) write(6,*) "NG"
if(i8.ne.0) write(6,*) "NG"
10 i=1
end
subroutine bbbbb
integer(kind=4)::i4
integer(kind=8)::i8
write(7) 1
write(11) 5
write(12) 6
write(13) 7
flush(7)
flush(11,IOSTAT=i4)
flush(12,IOSTAT=i8)
flush(13,ERR=10)
if(i4.ne.0) write(6,*) "NG"
if(i8.ne.0) write(6,*) "NG"
10 i=2
end
