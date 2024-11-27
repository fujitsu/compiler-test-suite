call sub01()
call sub02()
call sub03()
print *,'pass'
end

subroutine sub01()
integer,pointer :: ip
integer,target  :: it,ib,iv
it=1;ib=100;iv=200
ip=>it
call subta01(ip,ip)
if (ip.ne.200) write(6,*) "NG"
call subta02(ip,ip)
if (ip.ne.100) write(6,*) "NG"
call subta03(ip,ip)
if (ip.ne.200) write(6,*) "NG"
contains
subroutine subta01(ip1,ip2)
integer :: ip1,ip2
pointer :: ip1,ip2
ip1=>ib
ip2=>iv
end subroutine
subroutine subta02(ip1,ip2)
integer :: ip1,ip2
pointer :: ip1
ip1=>ib
ii=ip2
end subroutine
subroutine subta03(ip1,ip2)
integer :: ip1,ip2
pointer :: ip2
ii=ip1
ip2=>iv
end subroutine
end

subroutine sub02()
integer,pointer :: ip
integer,target  :: it,ib,iv
it=1;ib=100;iv=200
ip=>it
call subta01(ip,ip)
if (ip.ne.200) write(6,*) "NG"
call subta02(ip,ip)
if (ip.ne.100) write(6,*) "NG"
call subta03(ip,ip)
if (ip.ne.200) write(6,*) "NG"
contains
subroutine subta01(ip1,ip2)
integer :: ip1,ip2
pointer :: ip1,ip2
ip1=>ib
ip=>iv
ii=ip2
end subroutine
subroutine subta02(ip1,ip2)
integer :: ip1,ip2
pointer :: ip1
ip=>ib
ii=ip1
ii=ip2
end subroutine
subroutine subta03(ip1,ip2)
integer :: ip1,ip2
pointer :: ip2
ii=ip1
ii=ip2
ip=>iv
end subroutine
end

subroutine sub03()
integer,pointer :: ip
integer,target  :: it,ib,iv
it=1;ib=100;iv=200
ip=>it
call subta01(ip,ip)
if (ip.ne.7) write(6,*) "NG"
call subta02(ip,ip)
if (ip.ne.3) write(6,*) "NG"
call subta03(ip,ip)
if (ip.ne.5) write(6,*) "NG"
contains
subroutine subta01(ip1,ip2)
integer :: ip1,ip2
pointer :: ip1,ip2
ip1=>ib
ip=>iv
ii=ip2
iv=7
end subroutine
subroutine subta02(ip1,ip2)
integer :: ip1,ip2
pointer :: ip1
ip=>ib
ii=ip1
ip2=3
ib=3
end subroutine
subroutine subta03(ip1,ip2)
integer :: ip1,ip2
pointer :: ip2
ii=ip1
ii=ip2
ip=>iv
iv=5
end subroutine
end
