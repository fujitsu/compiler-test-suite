call s
print *,'pass'
end
subroutine s
i = scan ("Lalalalala","la")
if(i.ne.2) print *,'err1'
i = scan ("LalalaLALA","la",back=.true.)
if(i.ne.6) print *,'err2'
end
