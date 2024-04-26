call s
print *,'pass'
end
subroutine s
logical :: l
l = lgt('elephant','horse')
if(l.neqv..false.) print *,'err'
end
