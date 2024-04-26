call s
print *,'pass'
end
subroutine s
i = iachar('c')
if(i.ne.99) print *,'err'
end
