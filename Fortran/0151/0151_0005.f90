subroutine s1(k)
block
integer a(3),b(k)
character(k)  aa(3),bb(k)
a=1
b=2
aa='12'
bb='34'
block
  if (aa(3)/='12') print *,101
  if (bb(3)/='34') print *,102
  if (a(3)/=1) print *,201
  if (b(3)/=2) print *,202
end block
end block
end
call s1(3)
print *,'pass'
end

