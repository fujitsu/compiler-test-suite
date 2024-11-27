call test01()
call test02()
call test03()
call test04()
call test06()
call test07()
print *,"pass"
end


subroutine test01()
integer ,pointer  :: ip2
integer ,pointer  :: ip3
integer ,pointer :: ip
integer ,target  :: ii
ii=1
ip=>ii
ip3=> ii
allocate(ip2)
call sub(ip)
call sub1(ip,ii)
call sub2(ip)
contains
recursive subroutine sub(ii)
integer ,pointer ,intent(in) :: ii
ii=1
if (1.eq.2) then
call sub(ip)
end if
call sub1(ip,ii)
allocate(ip2)
call sub2(ip)
end subroutine
subroutine sub1(ii,jj)
integer ,pointer ,intent(out) :: ii
integer ,target:: jj
ii=>ip2
ii=>ip3
ii=>ii
end subroutine
subroutine sub2(ii)
integer ,pointer ,intent(inout) :: ii
deallocate(ip2)
ii=1
end subroutine

end 

subroutine test02()
integer ,pointer :: ip
integer ,target  :: ii
ii=1
ip=>ii
call sub(ip)
call sub1(ip,ii)
call sub2(ip)
contains
recursive subroutine sub(ii)
integer ,intent(in),pointer  :: ii
ii=1
if (1.eq.2) then
call sub(ip)
end if
call sub1(ip,ii)
call sub2(ip)
end subroutine
subroutine sub1(ii,jj)
integer ,pointer ,intent(out) :: ii
integer ,target:: jj
ii=>jj
end subroutine
subroutine sub2(ii)
integer ,intent(inout),pointer :: ii
ii=1
end subroutine

end 

subroutine test03()
integer ,pointer :: ip
integer ,target  :: ii
ii=1
ip=>ii
call sub(ip)
call sub1(ip,ii)
call sub2(ip)
contains
recursive subroutine sub(ii)
integer ,intent(in)  :: ii
pointer :: ii
ii=1
if (1.eq.2) then
call sub(ip)
end if
call sub1(ip,ii)
call sub2(ip)
end subroutine
subroutine sub1(ii,jj)
integer ,pointer ,intent(out) :: ii
integer ,target:: jj
ii=>jj
end subroutine
subroutine sub2(ii)
integer ,intent(inout) :: ii
pointer :: ii
ii=1
end subroutine

end
subroutine test04()
integer ,pointer :: ip
integer ,target  :: ii
ii=1
ip=>ii
call sub(ip)
call sub1(ip,ii)
call sub2(ip)
contains
recursive subroutine sub(ii)
integer ,pointer  :: ii
intent(in) :: ii
ii=1
if (1.eq.2) then
call sub(ip)
end if
call sub1(ip,ii)
call sub2(ip)
end subroutine
subroutine sub1(ii,jj)
integer ,pointer ,intent(out) :: ii
integer ,target:: jj
ii=>jj
end subroutine
subroutine sub2(ii)
integer ,pointer :: ii
intent(inout) :: ii
ii=1
end subroutine

end



subroutine test06()
integer ,pointer :: ip
integer ,target  :: ii
ii=1
ip=>ii
call sub(ip)
call sub1(ip,ii)
call sub2(ip)
contains
recursive subroutine sub(ii)
pointer :: ii
integer ,intent(in)  :: ii
ii=1
if (1.eq.2) then
call sub(ip)
end if
call sub1(ip,ii)
call sub2(ip)
end subroutine
subroutine sub1(ii,jj)
integer ,pointer ,intent(out) :: ii
integer ,target:: jj
ii=>jj
end subroutine
subroutine sub2(ii)
pointer :: ii
integer ,intent(inout) :: ii
ii=1
end subroutine

end
subroutine test07()
integer ,pointer :: ip
integer ,target  :: ii
ii=1
ip=>ii
call sub(ip)
call sub1(ip,ii)
call sub2(ip)
contains
recursive subroutine sub(ii)
intent(in) :: ii
integer ,pointer  :: ii
ii=1
if (1.eq.2) then
call sub(ip)
end if
call sub1(ip,ii)
call sub2(ip)
end subroutine
subroutine sub1(ii,jj)
integer ,pointer ,intent(out) :: ii
integer ,target:: jj
ii=>jj
end subroutine
subroutine sub2(ii)
intent(inout) :: ii
integer ,pointer :: ii
ii=1
end subroutine

end



