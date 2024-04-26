call s
print *,'pass'
end
subroutine s
logical :: l
l = lle('elephant','horse')
if(l.neqv..true.) print *,'err'
end
