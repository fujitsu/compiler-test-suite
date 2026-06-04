call aaaaa
call bbbbb
print *,'pass'
contains
subroutine aaaaa
if(btest(i=8,pos=3).neqv..true._8) print *,'fail'
if(btest(pos=3,i=8).neqv..true._8) print *,'fail'
if(kind(btest(i=8,pos=3)).ne.8) print *,'fail'
if(kind(btest(pos=3,i=8)).ne.8) print *,'fail'
if(lge(string_a='one',string_b='two').neqv..false._8)  print *,'fail'
if(lge(string_b='two',string_a='one').neqv..false._8)  print *,'fail'
if(lgt(string_a='one',string_b='two').neqv..false._8)  print *,'fail'
if(lgt(string_b='two',string_a='one').neqv..false._8)  print *,'fail'
if(lle(string_a='one',string_b='two').neqv..true._8)   print *,'fail'
if(lle(string_b='two',string_a='one').neqv..true._8)   print *,'fail'
if(llt(string_a='one',string_b='two').neqv..true._8)   print *,'fail'
if(llt(string_b='two',string_a='one').neqv..true._8)   print *,'fail'
if(kind(lge(string_a='one',string_b='two')).ne.8)  print *,'fail'
if(kind(lge(string_b='two',string_a='one')).ne.8)  print *,'fail'
if(kind(lgt(string_a='one',string_b='two')).ne.8)  print *,'fail'
if(kind(lgt(string_b='two',string_a='one')).ne.8)  print *,'fail'
if(kind(lle(string_a='one',string_b='two')).ne.8)   print *,'fail'
if(kind(lle(string_b='two',string_a='one')).ne.8)   print *,'fail'
if(kind(llt(string_a='one',string_b='two')).ne.8)   print *,'fail'
if(kind(llt(string_b='two',string_a='one')).ne.8)   print *,'fail'
end subroutine
subroutine bbbbb
integer,dimension(10)::sh,ss
character,dimension(10)::ch1,ch2
sh=8
ss=3
ch1='one'
ch2='two'
if(all(btest(i=sh,pos=ss)).neqv..true.) print *,'fail'
if(all(btest(i=sh,pos=ss)).neqv..true.) print *,'fail'
if(all(btest(pos=ss,i=sh)).neqv..true.) print *,'fail'
if(all(btest(pos=ss,i=sh)).neqv..true.) print *,'fail'
if(kind(btest(i=8,pos=3)).ne.8) print *,'fail'
if(kind(btest(pos=3,i=8)).ne.8) print *,'fail'
if(all(lge(string_a=ch1,string_b=ch2).neqv..false._8))  print *,'fail'
if(all(lge(string_b=ch2,string_a=ch1)).neqv..false._8)  print *,'fail'
if(all(lgt(string_a=ch1,string_b=ch2)).neqv..false._8)  print *,'fail'
if(all(lgt(string_b=ch2,string_a=ch1)).neqv..false._8)  print *,'fail'
if(all(lle(string_a=ch1,string_b=ch2)).neqv..true._8)   print *,'fail'
if(all(lle(string_b=ch2,string_a=ch1)).neqv..true._8)   print *,'fail'
if(all(llt(string_a=ch1,string_b=ch2)).neqv..true._8)   print *,'fail'
if(all(llt(string_b=ch2,string_a=ch1)).neqv..true._8)   print *,'fail'
if(kind(lge(string_a=ch1,string_b=ch2)).ne.8)  print *,'fail'
if(kind(lge(string_b=ch2,string_a=ch1)).ne.8)  print *,'fail'
if(kind(lgt(string_a=ch1,string_b=ch2)).ne.8)  print *,'fail'
if(kind(lgt(string_b=ch2,string_a=ch1)).ne.8)  print *,'fail'
if(kind(lle(string_a=ch1,string_b=ch2)).ne.8)   print *,'fail'
if(kind(lle(string_b=ch2,string_a=ch1)).ne.8)   print *,'fail'
if(kind(llt(string_a=ch1,string_b=ch2)).ne.8)   print *,'fail'
if(kind(llt(string_b=ch2,string_a=ch1)).ne.8)   print *,'fail'

end subroutine
end
