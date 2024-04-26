call s
print *,'pass'
end
subroutine s
logical :: l
l = llt('elephant','horse')
if(l.neqv..true.) print *,'err'
end
