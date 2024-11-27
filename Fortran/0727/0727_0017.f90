call test01()
call test02()
call test03()
call test04()
call test11()
call test12()
call test13()
call test14()
call test41()
call test42()
call test43()
call test44()
call test31()
call test32()
call test33()
call test34()
print *,'pass'
end

subroutine test01()
integer(kind=4) i1,i2,kk,ii
parameter (i1=-2147483647-1)
parameter (i2=-1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test02()
integer(kind=4) i1,i2,kk,ii
parameter (i1=-2147483647-1)
parameter (i2=1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test03()
integer(kind=4) i1,i2,kk,ii
parameter (i1=2147483647)
parameter (i2=-1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test04()
integer(kind=4) i1,i2,kk,ii
parameter (i1=2147483647)
parameter (i2=1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end

subroutine test11()
integer(kind=2) i1,i2,kk,ii
parameter (i1=-32768)
parameter (i2=-1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test12()
integer(kind=2) i1,i2,kk,ii
parameter (i1=-32768)
parameter (i2=1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test13()
integer(kind=2) i1,i2,kk,ii
parameter (i1=32767)
parameter (i2=-1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test14()
integer(kind=2) i1,i2,kk,ii
parameter (i1=32767)
parameter (i2=1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end


subroutine test31()
integer(kind=8) i1,i2,kk,ii
parameter (i1=-2147483647-1)
parameter (i2=-1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test32()
integer(kind=8) i1,i2,kk,ii
parameter (i1=-2147483647-1)
parameter (i2=1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test33()
integer(kind=8) i1,i2,kk,ii
parameter (i1=2147483647)
parameter (i2=-1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test34()
integer(kind=8) i1,i2,kk,ii
parameter (i1=2147483647)
parameter (i2=1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end

subroutine test41()
integer(kind=1) i1,i2,kk,ii
parameter (i1=-128  )
parameter (i2=-1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test42()
integer(kind=1) i1,i2,kk,ii
parameter (i1=-128  )
parameter (i2=1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test43()
integer(kind=1) i1,i2,kk,ii
parameter (i1=127  )
parameter (i2=-1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end
subroutine test44()
integer(kind=1) i1,i2,kk,ii
parameter (i1=127  )
parameter (i2=1)
parameter (kk=mod(i1,i2))
parameter (ii=modulo(i1,i2))
if (kk.ne.0) write(6,*) "NG"
if (ii.ne.0) write(6,*) "NG"
end

