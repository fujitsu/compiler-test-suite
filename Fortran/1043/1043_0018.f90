module test_01a
 integer :: iii=100
end module
module test_01b
 use test_01a,only:iii
end module
module test_01c
 use test_01b,only:iii
end module
module test_01c2
 use test_01b,only:iii
end module

module test_01d
 use test_01a,only:iii
end module
module test_01d2
 use test_01d,only:iii
end module
module test_01e
 use test_01b,only:iii
 use test_01a,only:iii
 use test_01d,only:iii
 use test_01c2,only:iii
end module

module test_01f
 use test_01e,only:iii
 use test_01c2,only:iii
end


use test_01f,only:iii
if(100.ne.iii) write(6,*) "NG"
print *,"pass"
end
