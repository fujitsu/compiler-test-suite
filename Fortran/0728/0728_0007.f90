call sub01()
print *,'pass'
end

subroutine sub01()
interface
subroutine usub01(ip1,ip2,ip3)
integer(kind=4) ,pointer,optional  :: ip1,ip2,ip3
end subroutine
subroutine usub02(ip1,ip2,ip3)
integer(kind=4) ,pointer,optional  :: ip1,ip2,ip3
end subroutine
subroutine usub03(ip1,ip2,ip3)
integer(kind=4) ,pointer,optional  :: ip1,ip2,ip3
end subroutine

end interface
integer(kind=4) ,pointer  :: ia1,ia2,ia3
integer(kind=4) ,target   :: it1,it2,it3
ia1=>it1; ia2=>it2; ia3=>it3
it1=1; it2=2; it3=3
call usub01(ip1=ia1,ip2=ia2)
if (ia1.ne.ia2) write(6,*) "NG"
ia1=>it1; ia2=>it2; ia3=>it3
it1=1; it2=2; it3=3
call usub01(ip3=ia3,ip2=ia2)
if (ia2.ne.ia3) write(6,*) "NG"
ia1=>it1; ia2=>it2; ia3=>it3
it1=1; it2=2; it3=3
call usub01(ip3=ia3,ip1=ia1)
if (ia1.ne.ia3) write(6,*) "NG"

ia1=>it1; ia2=>it2; ia3=>it3
it1=1; it2=2; it3=3
call usub02(ip1=ia1,ip2=ia2)
if (ia1.ne.ia2) write(6,*) "NG"
ia1=>it1; ia2=>it2; ia3=>it3
it1=1; it2=2; it3=3
call usub02(ip3=ia3,ip2=ia2)
if (ia2.ne.ia3) write(6,*) "NG"
ia1=>it1; ia2=>it2; ia3=>it3
it1=1; it2=2; it3=3
call usub02(ip3=ia3,ip1=ia1)
if (ia1.ne.ia3) write(6,*) "NG"

ia1=>it1; ia2=>it2; ia3=>it3
it1=1; it2=2; it3=3
call usub03(ip1=ia1,ip2=ia2)
if (ia1.ne.100) write(6,*) "NG"
ia1=>it1; ia2=>it2; ia3=>it3
it1=1; it2=2; it3=3
call usub03(ip3=ia3,ip2=ia2)
if (ia2.ne.100) write(6,*) "NG"
ia1=>it1; ia2=>it2; ia3=>it3
it1=1; it2=2; it3=3
call usub03(ip3=ia3,ip1=ia1)
if (ia3.ne.100) write(6,*) "NG"
end

subroutine usub01(ip1,ip2,ip3)
integer(kind=4) ,pointer,optional  :: ip1,ip2,ip3
integer(kind=4) ,pointer  :: ipp
entry usub02(ip1,ip2,ip3)
if(.not.present(ip1)) then
ip2=>ip3
end if
if(.not.present(ip2)) then
ip1=>ip3
end if
if(.not.present(ip3)) then
ip1=>ip2
end if
return
entry usub03(ip1,ip2,ip3)
allocate(ipp)
ipp=100
if(.not.present(ip1)) then
ip2=>ipp
end if
if(.not.present(ip2)) then
ip3=>ipp
end if
if(.not.present(ip3)) then
ip1=>ipp
end if
return
end subroutine
