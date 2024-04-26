call s
print *,'pass'
end
subroutine s
i = verify ("Lalalalala","l")
if(i.ne.1) print *,'err1'
i = verify ("LalalaLALA","LA",back=.true.)
if(i.ne.6) print *,'eer'
end
