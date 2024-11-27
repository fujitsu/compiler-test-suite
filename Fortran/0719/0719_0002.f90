integer(kind=1)::i1
integer(kind=2)::i2
integer(kind=4)::i4
integer(kind=8)::i8
open(11, recl=128)
open(12, recl=32768)
open(13, recl=32768)
open(14, recl=32768)
inquire(11,RECL=i1)
inquire(12,RECL=i2)
inquire(13,RECL=i4)
inquire(14,RECL=i8)
close(11)
close(12)
close(13)
close(14)
print *,i1
print *,i2
print *,i4
print *,i8
end
