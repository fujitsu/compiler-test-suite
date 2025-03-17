call test01()
call test02()
call test03()
call test04()
print *,'pass'
end
subroutine test01()
logical(kind=1)   :: i01 = .false._1
logical(kind=2)   :: i02 = .false._1
logical(kind=4)   :: i03 = .false._1
logical(kind=8)   :: i04 = .false._1
if (i01.neqv..false._1) print *,'fail'
if (i02.neqv..false._2) print *,'fail'
if (i03.neqv..false._4) print *,'fail'
if (i04.neqv..false._8) print *,'fail'
end subroutine
subroutine test02()
logical(kind=1)   :: i01 = .false._2
logical(kind=2)   :: i02 = .false._2
logical(kind=4)   :: i03 = .false._2
logical(kind=8)   :: i04 = .false._2
if (i01.neqv..false._1) print *,'fail'
if (i02.neqv..false._2) print *,'fail'
if (i03.neqv..false._4) print *,'fail'
if (i04.neqv..false._8) print *,'fail'
end subroutine

subroutine test03()
logical(kind=1)   :: i01 = .false._4
logical(kind=2)   :: i02 = .false._4
logical(kind=4)   :: i03 = .false._4
logical(kind=8)   :: i04 = .false._4
if (i01.neqv..false._1) print *,'fail'
if (i02.neqv..false._2) print *,'fail'
if (i03.neqv..false._4) print *,'fail'
if (i04.neqv..false._8) print *,'fail'
end subroutine

subroutine test04()
logical(kind=1)   :: i01 = .false._8
logical(kind=2)   :: i02 = .false._8
logical(kind=4)   :: i03 = .false._8
logical(kind=8)   :: i04 = .false._8
if (i01.neqv..false._1) print *,'fail'
if (i02.neqv..false._2) print *,'fail'
if (i03.neqv..false._4) print *,'fail'
if (i04.neqv..false._8) print *,'fail'
end subroutine
