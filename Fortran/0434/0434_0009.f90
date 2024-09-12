if (any([f1()]/=[1_1,3_1])) print *,'err1'
if (any([f2()]/=[1_2,3_2])) print *,'err1'
if (any([f3()]/=[1_4,3_4])) print *,'err1'
if (any([f4()]/=[1_8,3_8])) print *,'err1'

print *,'pass'
contains
function f1() result(p)
integer(1),pointer::p(:)
integer(1),pointer::t(:)
allocate(t(3),source=[1_1,2_1,3_1])
p=>t(::2)
end function
function f2() result(p)
integer(2),pointer::p(:)
integer(2),pointer::t(:)
allocate(t(3),source=[1_2,2_2,3_2])
p=>t(::2)
end function
function f3() result(p)
integer(4),pointer::p(:)
integer(4),pointer::t(:)
allocate(t(3),source=[1,2,3])
p=>t(::2)
end function
function f4() result(p)
integer(8),pointer::p(:)
integer(8),pointer::t(:)
allocate(t(3),source=[1_8,2_8,3_8])
p=>t(::2_8)
end function
end
