call s
print *,'pass'
end
subroutine s
logical(kind=2) :: l
l = logical (.true.,2)
if(l.neqv..true.) print *,'err'
end
