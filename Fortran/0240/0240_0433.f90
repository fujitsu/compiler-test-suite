call s
print *,'pass'
end
subroutine s
logical :: l
l = lge('elephant','horse')
if(l.neqv..false.) print *,'err'
end
