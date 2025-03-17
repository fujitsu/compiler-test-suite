module test_01a2
 integer :: iii=100
end module
module test_01a3
 use test_01a2,only:iii
end module
module test_01a4
 use test_01a3
end module
module test_01a
 use test_01a4
end module
module test_01b
 use test_01a,only:iii
end module
module test_01c
 use test_01b,only:iii
end module
module test_01c2
 use test_01b,only:iii
 use test_01c,only:iii
 use test_01b
end module

module test_01d
 use test_01a,only:iii
end module
module test_01d2
 use test_01d,only:iii
end module
module test_01e
 use test_01b
 use test_01d2,ttt=>iii
 use test_01d,vvv=>iii
 use test_01b,kkk=>iii
 use test_01c,jjj=>iii
 use test_01c2
end module

module test_01f
 use test_01e
 use test_01c2
end


use test_01f
if(100.ne.iii) write(6,*) "NG"
if(100.ne.kkk) write(6,*) "NG"
print *,"pass"
end
