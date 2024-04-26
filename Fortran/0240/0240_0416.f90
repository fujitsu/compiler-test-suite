call s
print *,'pass'
end
subroutine s
i = index('mississippi' , 'si' )
if(i.ne.4) print *,'err1'
i = index('mississippi' , 'si' , back=.true.)
if(i.ne.7) print *,'err2'
end
