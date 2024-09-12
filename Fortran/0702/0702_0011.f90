call test01()
call test02()
print *,'pass'
end

subroutine test01()
logical(kind=1)  l1
logical(kind=2)  l2
logical(kind=4)  l4
logical(kind=8)  l8
call inl_ok01(l1)
if (l1.eqv..false._1) write(6,'(a)') 'ng'
call inl_ok02(l2)
if (l2.eqv..false._2) write(6,'(a)') 'ng'
call inl_ok03(l4)
if (l4.eqv..false._4) write(6,'(a)') 'ng'
call inl_ok04(l8)
if (l8.eqv..false._8) write(6,'(a)') 'ng'
end
subroutine inl_ok01(l1)
logical(kind=1) l1
l1=.true._1
end
subroutine inl_ok02(l2)
logical(kind=2) l2
l2=.true._2
end
subroutine inl_ok03(l1)
logical(kind=4) l1
l1=.true._4
end
subroutine inl_ok04(l1)
logical(kind=8) l1
l1=.true._8
end

subroutine test02()
logical(kind=1)  l1,inl_ok05
logical(kind=2)  l2,inl_ok06
logical(kind=4)  l4,inl_ok07
logical(kind=8)  l8,inl_ok08
l1 = inl_ok05(l1)
if (l1.eqv..false._1) write(6,'(a)') 'ng'
l2 = inl_ok06(l2)
if (l2.eqv..false._2) write(6,'(a)') 'ng'
l4 = inl_ok07(l4)
if (l4.eqv..false._4) write(6,'(a)') 'ng'
l8 = inl_ok08(l8)
if (l8.eqv..false._8) write(6,'(a)') 'ng'
end
function   inl_ok05(l1)
logical(kind=1) l1,inl_ok05
l1=.true._1
inl_ok05 = l1
end
function   inl_ok06(l2)
logical(kind=2) l2,inl_ok06
l2=.true._2
inl_ok06 = l2
end
function   inl_ok07(l1)
logical(kind=4) l1,inl_ok07
l1=.true._4
inl_ok07 = l1
end
function   inl_ok08(l1)
logical(kind=8) l1,inl_ok08
l1=.true._8
inl_ok08 = l1
end
