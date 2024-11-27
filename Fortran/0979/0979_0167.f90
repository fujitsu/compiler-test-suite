call test01()
call test02()
call test03()
call test04()
print *,"pass"
end 
subroutine test01()
integer(kind=8) ,parameter  :: i01=int(z"1111" ,1)
integer(kind=8) ,parameter  :: i02=int(z"1111" ,kind=1)
integer(kind=8) ,parameter  :: i03=int(a=z"1111" ,kind=1)
integer(kind=8) ,parameter  :: i04=int(kind=1,a=z"1111")
integer(kind=8) ,parameter  :: i05=int(a=z"1111" ,kind=5-1)
integer(kind=8) ,parameter  :: i06=int(a=z"1111" ,kind=(int(1)))
if (i01.ne.int(z"1111" ,1)) write(6,*) "NG"
if (i02.ne.int(z"1111" ,kind=1)) write(6,*) "NG"
if (i03.ne.int(a=z"1111" ,kind=1)) write(6,*) "NG"
if (i04.ne.int(kind=1,a=z"1111")) write(6,*) "NG"
if (i05.ne.int(a=z"1111" ,kind=5-1)) write(6,*) "NG"
if (i06.ne.int(a=z"1111" ,kind=(int(1)))) write(6,*) "NG"
end

subroutine test02()
integer(kind=8) ,parameter  :: i01=int(z"1111" ,2)
integer(kind=8) ,parameter  :: i02=int(z"1111" ,kind=2)
integer(kind=8) ,parameter  :: i03=int(a=z"1111" ,kind=2)
integer(kind=8) ,parameter  :: i04=int(kind=2,a=z"1111")
integer(kind=8) ,parameter  :: i05=int(a=z"1111" ,kind=5-3)
integer(kind=8) ,parameter  :: i06=int(a=z"1111" ,kind=(int(2)))
if (i01.ne.int(z"1111" ,2)) write(6,*) "NG"
if (i02.ne.int(z"1111" ,kind=2)) write(6,*) "NG"
if (i03.ne.int(a=z"1111" ,kind=2)) write(6,*) "NG"
if (i04.ne.int(kind=2,a=z"1111")) write(6,*) "NG"
if (i05.ne.int(a=z"1111" ,kind=5-3)) write(6,*) "NG"
if (i06.ne.int(a=z"1111" ,kind=(int(2)))) write(6,*) "NG"
end

subroutine test03()
integer(kind=8) ,parameter  :: i01=int(kind=+4,a=z"1111")
integer(kind=8) ,parameter  :: i02=int(z"1111" ,kind=+4)
integer(kind=8) ,parameter  :: i03=int(a=z"1111" ,kind=(4))
integer(kind=8) ,parameter  :: i04=int(kind=(4),a=z"1111")
integer(kind=8) ,parameter  :: i05=int(a=z"1111" ,kind=5-3)
integer(kind=8) ,parameter  :: i06=int(a=z"1111" ,kind=(int(4)))
if (i01.ne.int(z"1111" ,4)) write(6,*) "NG"
if (i02.ne.int(z"1111" ,kind=4)) write(6,*) "NG"
if (i03.ne.int(a=z"1111" ,kind=4)) write(6,*) "NG"
if (i04.ne.int(kind=4,a=z"1111")) write(6,*) "NG"
if (i05.ne.int(a=z"1111" ,kind=5-1)) write(6,*) "NG"
if (i06.ne.int(a=z"1111" ,kind=(int(4)))) write(6,*) "NG"
end

subroutine test04()
integer(kind=8) ,parameter  :: i01=int(kind=+8,a=z"1111")
integer(kind=8) ,parameter  :: i02=int(z"1111" ,kind=+8)
integer(kind=8) ,parameter  :: i03=int(a=z"1111" ,kind=(8))
integer(kind=8) ,parameter  :: i04=int(kind=(8),a=z"1111")
integer(kind=8) ,parameter  :: i05=int(a=z"1111" ,kind=5-3)
integer(kind=8) ,parameter  :: i06=int(a=z"1111" ,kind=(int(8)))
if (i01.ne.int(z"1111" ,8)) write(6,*) "NG"
if (i02.ne.int(z"1111" ,kind=8)) write(6,*) "NG"
if (i03.ne.int(a=z"1111" ,kind=8)) write(6,*) "NG"
if (i04.ne.int(kind=8,a=z"1111")) write(6,*) "NG"
if (i05.ne.int(a=z"1111" ,kind=5-1)) write(6,*) "NG"
if (i06.ne.int(a=z"1111" ,kind=(int(8)))) write(6,*) "NG"
end

