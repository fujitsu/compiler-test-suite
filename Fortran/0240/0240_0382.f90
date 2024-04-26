call s
print *,'pass'
end
subroutine s
i = ichar('c')
if(i.ne.99) print *,'err'
end
