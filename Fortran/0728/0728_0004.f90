call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
integer ,pointer :: ip
integer ,target  :: it
ip=>it
if (.not.associated(ip,it)) write(6,*) "NG"
if (.not.associated(ip)) write(6,*) "NG"
ip=>null()
if (associated(ip,it)) write(6,*) "NG"
if (associated(ip)) write(6,*) "NG"
call isub1(ip)
ip=>null(ip)
if (associated(ip,it)) write(6,*) "NG"
if (associated(ip,ip)) write(6,*) "NG"
if (associated(ip)) write(6,*) "NG"
call isub1(ip)
ip=>it
call isub1(null())
call isub1(null(ip))
call isub2(ip)
call isub3(ip)
if (associated(ip,it)) write(6,*) "NG"
if (associated(ip,ip)) write(6,*) "NG"
if (associated(ip)) write(6,*) "NG"
call isub4(ip)
contains
subroutine isub1(ipp)
integer ,pointer :: ipp
if (associated(ipp,it)) write(6,*) "NG"
if (associated(ipp,ip)) write(6,*) "NG"
if (associated(ipp,ipp)) write(6,*) "NG"
if (associated(ipp)) write(6,*) "NG"
end subroutine
subroutine isub2(ipp)
integer ,pointer :: ipp
if (.not.associated(ipp,it)) write(6,*) "NG"
if (.not.associated(ipp,ip)) write(6,*) "NG"
if (.not.associated(ipp,ipp)) write(6,*) "NG"
if (.not.associated(ipp)) write(6,*) "NG"
end subroutine
subroutine isub3(ipp)
integer ,pointer :: ipp
if (.not.associated(ipp,it)) write(6,*) "NG"
if (.not.associated(ipp,ip)) write(6,*) "NG"
if (.not.associated(ipp,ipp)) write(6,*) "NG"
if (.not.associated(ipp)) write(6,*) "NG"
ipp=>null()
end subroutine
subroutine isub4(ipp)
integer ,pointer :: ipp
ipp=>it
if (.not.associated(ipp,it)) write(6,*) "NG"
if (.not.associated(ipp,ipp)) write(6,*) "NG"
if (.not.associated(ipp)) write(6,*) "NG"
if (.not.associated(ipp,ip)) write(6,*) "NG"
end subroutine
end subroutine

subroutine test02()
integer ,pointer :: ip
integer ,target  :: it
ip=>it
call isub1(ip,ip)
call isub2(ip,null())
call isub2(ip,null(ip))
call isub3(null(),null(ip))
call isub4(null(),ip)
contains
subroutine isub1(ipp1,ipp2)
integer ,pointer :: ipp1,ipp2
if (.not.associated(ipp2,it)) write(6,*) "NG"
if (.not.associated(ipp2,ip)) write(6,*) "NG"
if (.not.associated(ipp1,it)) write(6,*) "NG"
if (.not.associated(ipp1,ip)) write(6,*) "NG"
if (.not.associated(ipp1,ipp2)) write(6,*) "NG"
if (.not.associated(ipp1,ipp1)) write(6,*) "NG"
if (.not.associated(ipp1)) write(6,*) "NG"
if (.not.associated(ipp2)) write(6,*) "NG"
end subroutine
subroutine isub2(ipp1,ipp2)
integer ,pointer :: ipp1,ipp2
if (associated(ipp2,it)) write(6,*) "NG"
if (associated(ipp2,ip)) write(6,*) "NG"
if (.not.associated(ipp1,it)) write(6,*) "NG"
if (.not.associated(ipp1,ip)) write(6,*) "NG"
if (associated(ipp1,ipp2)) write(6,*) "NG"
if (.not.associated(ipp1,ipp1)) write(6,*) "NG"
if (.not.associated(ipp1)) write(6,*) "NG"
if (associated(ipp2)) write(6,*) "NG"
end subroutine
subroutine isub3(ipp1,ipp2)
integer ,pointer :: ipp1,ipp2
if (associated(ipp2,it)) write(6,*) "NG"
if (associated(ipp2,ip)) write(6,*) "NG"
if (associated(ipp1,it)) write(6,*) "NG"
if (associated(ipp1,ip)) write(6,*) "NG"
if (associated(ipp1,ipp2)) write(6,*) "NG"
if (associated(ipp1,ipp1)) write(6,*) "NG"
if (associated(ipp1)) write(6,*) "NG"
if (associated(ipp2)) write(6,*) "NG"
end subroutine
subroutine isub4(ipp1,ipp2)
integer ,pointer :: ipp1,ipp2
if (.not.associated(ipp2,it)) write(6,*) "NG"
if (.not.associated(ipp2,ip)) write(6,*) "NG"
if (associated(ipp1,it)) write(6,*) "NG"
if (associated(ipp1,ip)) write(6,*) "NG"
if (associated(ipp1,ipp2)) write(6,*) "NG"
if (associated(ipp1,ipp1)) write(6,*) "NG"
if (associated(ipp1)) write(6,*) "NG"
if (.not.associated(ipp2)) write(6,*) "NG"
end subroutine
end subroutine

subroutine test03()
interface esub1
subroutine esub1(ip)
integer ,pointer :: ip
end subroutine
end interface
interface
subroutine esub2(ip)
integer ,pointer :: ip
end subroutine
end interface
integer ,pointer :: ip
integer ,target  :: it
ip=>it
call esub1(ip)
call esub2(null(ip))
call esub2(null())
end subroutine
subroutine esub1(ip)
integer ,pointer :: ip
if (.not.associated(ip)) write(6,*) "NG"
end subroutine
subroutine esub2(ip)
integer ,pointer :: ip
if (associated(ip)) write(6,*) "NG"
end subroutine
