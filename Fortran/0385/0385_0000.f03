call aaaaa
call bbbbb
call ccccc
print *,'pass'
end
subroutine aaaaa
real(kind=4)::r

r=1.234567
write(16,*,DECIMAL="COMMA") r
write(26,*,DECIMAL="POINT") r
write(36,*,DELIM="APOSTROPHE") r
write(46,*,DELIM="QUOTE") r
write(56,*,DELIM="NONE") r
write(66,*,SIGN="PLUS") r
write(76,*,SIGN="SUPPRESS") r
write(86,*,SIGN="PROCESSOR_DEFINED") r
write(7,*) r
write(8,*) r
write(9,*) r
write(10,*) r

rewind(7)
rewind(8)
rewind(9)
rewind(10)
read(7,*,BLANK="NULL")
read(8,*,BLANK="ZERO")
read(9,*,PAD="YES")
read(10,*,PAD="NO")
end
subroutine bbbbb
integer(kind=1) i1
integer(kind=2) i2
integer(kind=4) i4
integer(kind=8) i8
real(kind=4)::r
r=1.234567
i1=10
write(7,*) r
write(8,*) r
write(9,*) r
write(10,*) r
rewind(7)
rewind(8)
rewind(9)
rewind(10)
read(7,10 ,ADVANCE='NO',SIZE=i1)
read(8,10 ,ADVANCE='NO',SIZE=i2)
read(9,10,ADVANCE='NO',SIZE=i4)
read(10,10,ADVANCE='NO',SIZE=i8)
10 FORMAT (2E16.3, I5)
end
subroutine ccccc
character(len=200)::ch
write(7,*,IOMSG=ch) 1.0
rewind(7)
read(7,*,IOMSG=ch)
end
