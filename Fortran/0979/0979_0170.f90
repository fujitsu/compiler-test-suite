call test01()
call test02()
call test03()
call test04()
call test05()
call test11()
call test12()
call test13()
call test14()
call test15()

print *,"pass"
end 
subroutine test01()
integer(kind=4) ,parameter  :: i01=kind(int(z"1111",1))
integer(kind=4) ,parameter  :: i02=kind(int(z"1111",2))
integer(kind=4) ,parameter  :: i03=kind(int(z"1111",4))
integer(kind=4) ,parameter  :: i04=kind(int(z"1111",8))
if (i01.ne.kind(int(z"1111",1))) write(6,*) "NG"
if (i02.ne.kind(int(z"1111",2))) write(6,*) "NG"
if (i03.ne.kind(int(z"1111",4))) write(6,*) "NG"
if (i04.ne.kind(int(z"1111",8))) write(6,*) "NG"
end

subroutine test02()
integer(kind=4) ,parameter  :: i01=(int(z"1111",1))
integer(kind=4) ,parameter  :: i02=(int(z"1111",2))
integer(kind=4) ,parameter  :: i03=(int(z"1111",4))
integer(kind=4) ,parameter  :: i04=(int(z"1111",8))
if (i01.ne.(int(z"1111",1))) write(6,*) "NG"
if (i02.ne.(int(z"1111",2))) write(6,*) "NG"
if (i03.ne.(int(z"1111",4))) write(6,*) "NG"
if (i04.ne.(int(z"1111",8))) write(6,*) "NG"
end

subroutine test03()
integer(kind=4) ,parameter  :: i01=(int(z"80001111",1))
integer(kind=4) ,parameter  :: i02=(int(z"80001111",2))
integer(kind=4) ,parameter  :: i03=(int(z"80001111",4))
integer(kind=4) ,parameter  :: i04=(int(z"70001111",8))
if (i01.ne.(int(z"80001111",1))) write(6,*) "NG"
if (i02.ne.(int(z"80001111",2))) write(6,*) "NG"
if (i03.ne.(int(z"80001111",4))) write(6,*) "NG"
if (i04.ne.(int(z"70001111",8))) write(6,*) "NG"
end

subroutine test04()
integer(kind=4) ,parameter  :: i01=(int(z"fffff1111",1))
integer(kind=4) ,parameter  :: i02=(int(z"fffff1111",2))
integer(kind=4) ,parameter  :: i03=(int(z"fffff1111",4))
integer(kind=4) ,parameter  :: i04=(int(z"7fff1111",8))
if (i01.ne.(int(z"fffff1111",1))) write(6,*) "NG"
if (i02.ne.(int(z"fffff1111",2))) write(6,*) "NG"
if (i03.ne.(int(z"fffff1111",4))) write(6,*) "NG"
if (i04.ne.(int(z"7fff1111",8))) write(6,*) "NG"
end

subroutine test05()
integer(kind=4) ,parameter  :: i01=(int(z"00000000a1111",1))
integer(kind=4) ,parameter  :: i02=(int(z"00000000a1111",2))
integer(kind=4) ,parameter  :: i03=(int(z"00000000a1111",4))
integer(kind=4) ,parameter  :: i04=(int(z"00000000a1111",8))
if (i01.ne.(int(z"00000000a1111",1))) write(6,*) "NG"
if (i02.ne.(int(z"00000000a1111",2))) write(6,*) "NG"
if (i03.ne.(int(z"00000000a1111",4))) write(6,*) "NG"
if (i04.ne.(int(z"00000000a1111",8))) write(6,*) "NG"
end

subroutine test11()
integer(kind=4) ,parameter  :: i01=kind(int(z"1111"))
integer(kind=4) ,parameter  :: i02=kind(int(z"1111"))
integer(kind=4) ,parameter  :: i03=kind(int(z"1111"))
integer(kind=4) ,parameter  :: i04=kind(int(z"1111"))
if (i01.ne.kind(int(z"1111"))) write(6,*) "NG"
if (i02.ne.kind(int(z"1111"))) write(6,*) "NG"
if (i03.ne.kind(int(z"1111"))) write(6,*) "NG"
if (i04.ne.kind(int(z"1111"))) write(6,*) "NG"
end

subroutine test12()
integer(kind=4) ,parameter  :: i01=(int(z"1111"))
integer(kind=4) ,parameter  :: i02=(int(z"1111"))
integer(kind=4) ,parameter  :: i03=(int(z"1111"))
integer(kind=4) ,parameter  :: i04=(int(z"1111"))
if (i01.ne.(int(z"1111"))) write(6,*) "NG"
if (i02.ne.(int(z"1111"))) write(6,*) "NG"
if (i03.ne.(int(z"1111"))) write(6,*) "NG"
if (i04.ne.(int(z"1111"))) write(6,*) "NG"
end

subroutine test13()
integer(kind=4) ,parameter  :: i01=(int(z"80001111"))
integer(kind=4) ,parameter  :: i02=(int(z"80001111"))
integer(kind=4) ,parameter  :: i03=(int(z"80001111"))
integer(kind=4) ,parameter  :: i04=(int(z"80001111"))
if (i01.ne.(int(z"80001111"))) write(6,*) "NG"
if (i02.ne.(int(z"80001111"))) write(6,*) "NG"
if (i03.ne.(int(z"80001111"))) write(6,*) "NG"
if (i04.ne.(int(z"80001111"))) write(6,*) "NG"
end

subroutine test14()
integer(kind=4) ,parameter  :: i01=(int(z"fffff1111"))
integer(kind=4) ,parameter  :: i02=(int(z"fffff1111"))
integer(kind=4) ,parameter  :: i03=(int(z"fffff1111"))
integer(kind=4) ,parameter  :: i04=(int(z"fffff1111"))
if (i01.ne.(int(z"fffff1111"))) write(6,*) "NG"
if (i02.ne.(int(z"fffff1111"))) write(6,*) "NG"
if (i03.ne.(int(z"fffff1111"))) write(6,*) "NG"
if (i04.ne.(int(z"fffff1111"))) write(6,*) "NG"
end

subroutine test15()
integer(kind=4) ,parameter  :: i01=(int(z"00000000a1111",1))
integer(kind=4) ,parameter  :: i02=(int(z"00000000a1111",2))
integer(kind=4) ,parameter  :: i03=(int(z"00000000a1111",4))
integer(kind=4) ,parameter  :: i04=(int(z"00000000a1111",8))
if (i01.ne.(int(z"00000000a1111",1))) write(6,*) "NG"
if (i02.ne.(int(z"00000000a1111",2))) write(6,*) "NG"
if (i03.ne.(int(z"00000000a1111",4))) write(6,*) "NG"
if (i04.ne.(int(z"00000000a1111",8))) write(6,*) "NG"
end

