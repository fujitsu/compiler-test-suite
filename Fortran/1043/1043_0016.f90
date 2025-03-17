module snfmod_01a2
 integer :: iii=100
end module
module snfmod_01a3
 use snfmod_01a2
end module
module snfmod_01a4
 use snfmod_01a3
end module
module snfmod_01a
 use snfmod_01a4
end module
module snfmod_01b
 use snfmod_01a,only:iii
end module
module snfmod_01c
 use snfmod_01b,only:iii
end module
module snfmod_01c2
 use snfmod_01b,only:iii
 use snfmod_01c,only:iii
 use snfmod_01b
end module

module snfmod_01d
 use snfmod_01a,only:iii
end module
module snfmod_01d2
 use snfmod_01d,only:iii
end module
module snfmod_01e
 use snfmod_01b
 use snfmod_01d2,ttt=>iii
 use snfmod_01d,vvv=>iii
 use snfmod_01b,kkk=>iii
 use snfmod_01c,jjj=>iii
 use snfmod_01c2
end module

module snfmod_01f
 use snfmod_01e
 use snfmod_01c2
end


use snfmod_01f
if(100.ne.iii) write(6,*) "NG"
if(100.ne.kkk) write(6,*) "NG"
print *,"pass"
end
