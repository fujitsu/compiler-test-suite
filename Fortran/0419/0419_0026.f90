logical(1),allocatable::l1
logical(2),allocatable::l2
logical(4),allocatable::l4
logical(8),allocatable::l8
call s1(l1)
call s2(l2)
call s3(l4)
call s4(l8)
print *,'pass'
contains
subroutine s1(l1)
logical(1),allocatable::l1
l1=.true.
if(l1.neqv..true._1) print *,'err1'
end subroutine 
subroutine s2(l2)
logical(2),allocatable::l2
l2=.true.
if(l2.neqv..true._2) print *,'err2'
end subroutine 
subroutine s3(l4)
logical(4),allocatable::l4
l4=.true.
if(l4.neqv..true._4) print *,'erre'
end subroutine 
subroutine s4(l8)
logical(8),allocatable::l8
l8=.true.
if(l8.neqv..true._8) print *,'erre'
end subroutine 
end
