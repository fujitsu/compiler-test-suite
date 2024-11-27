call test01()
call test02()
call test03()
print *,"pass"
end

subroutine test01()

integer(kind=8) ,parameter  :: i01=(int(z"ab11111111",1))
integer(kind=8) ,parameter  :: i02=(int(z"ab11111111",2))
integer(kind=8) ,parameter  :: i03=(int(z"ab11111111",4))
integer(kind=8) ,parameter  :: i04=(int(z"ab11111111",8))
integer(kind=4) ,parameter :: i1=int(z"ab11111111",1)
integer(kind=4) ,parameter :: i2=int(z"ab11111111",2)
integer(kind=4) ,parameter :: i3=int(z"ab11111111",4)
integer(kind=2) ,parameter :: i001=int(z"ab11111111",1)
integer(kind=2) ,parameter :: i002=int(z"ab11111111",2)
integer(kind=1) ,parameter :: i0001=int(z"ab11111111",1)

if (i01.ne.int(z"ab11111111",1)) write(6,*) "NG"
if (i02.ne.int(z"ab11111111",2)) write(6,*) "NG"
if (i03.ne.int(z"ab11111111",4)) write(6,*) "NG"
if (i04.ne.int(z"ab11111111",8)) write(6,*) "NG"

if (i1.ne.int(z"ab11111111",1)) write(6,*) "NG"
if (i2.ne.int(z"ab11111111",2)) write(6,*) "NG"
if (i3.ne.int(z"ab11111111",4)) write(6,*) "NG"

if (i001.ne.int(z"ab11111111",1)) write(6,*) "NG"
if (i002.ne.int(z"ab11111111",2)) write(6,*) "NG"

if (i0001.ne.int(z"ab11111111",1)) write(6,*) "NG"

end

subroutine test02()

integer(kind=8) ,parameter  :: i01=int(b'1111111111111')
integer(kind=8) ,parameter  :: i02=int(o'1234567')
integer(kind=8) ,parameter  :: i03=int(z'abcdef')
integer(kind=4) ,parameter  :: i04=int(b'1111111111111')
integer(kind=4) ,parameter  :: i05=int(o'1234567')
integer(kind=4) ,parameter  :: i06=int(z'abcdef')
integer(kind=2) ,parameter  :: i07=int(b'1111111111111')
integer(kind=2) ,parameter  :: i08=int(o'12345')
integer(kind=2) ,parameter  :: i09=int(z'abc')
integer(kind=1) ,parameter  :: i10=int(b'1111111')
integer(kind=1) ,parameter  :: i11=int(o'123')
integer(kind=1) ,parameter  :: i12=int(z'a')

if (i01.ne.int(b'1111111111111')) write(6,*) "NG"
if (i02.ne.int(o'1234567')) write(6,*) "NG"
if (i03.ne.int(z'abcdef')) write(6,*) "NG"
if (i04.ne.int(b'1111111111111')) write(6,*) "NG"
if (i05.ne.int(o'1234567')) write(6,*) "NG"
if (i06.ne.int(z'abcdef')) write(6,*) "NG"
if (i07.ne.int(b'1111111111111')) write(6,*) "NG"
if (i08.ne.int(o'12345')) write(6,*) "NG"
if (i09.ne.int(z'abc')) write(6,*) "NG"
if (i10.ne.int(b'1111111')) write(6,*) "NG"
if (i11.ne.int(o'123')) write(6,*) "NG"
if (i12.ne.int(z'a')) write(6,*) "NG"

end subroutine

subroutine test03()

integer(kind=8) ,parameter :: i01=(int(z"ab11111111",int(b'1',4)))
integer(kind=8) ,parameter :: i02=(int(z"ab11111111",int(b'10',4)))
integer(kind=8) ,parameter :: i03=(int(z"ab11111111",int(o'4',4)))
integer(kind=8) ,parameter :: i04=(int(z"ab11111111",int(b'1000',4)))
integer(kind=4) ,parameter :: i1=int(z"ab11111111",int(z'1',4))
integer(kind=4) ,parameter :: i2=int(z"ab11111111",int(o'2',4))
integer(kind=4) ,parameter :: i3=int(z"ab11111111",int(b'100',4))
integer(kind=2) ,parameter :: i001=int(z"ab11111111",int(z'1',4))
integer(kind=2) ,parameter :: i002=int(z"ab11111111",int(b'10',4))
integer(kind=1) ,parameter :: i0001=int(z"ab11111111",int(b'1',4))

if (i01.ne.int(z"ab11111111",int(b'1',4))) write(6,*) "NG"
if (i02.ne.int(z"ab11111111",int(b'10',4))) write(6,*) "NG"
if (i03.ne.int(z"ab11111111",int(b'100',4))) write(6,*) "NG"
if (i04.ne.int(z"ab11111111",int(b'1000',4))) write(6,*) "NG"

if (i1.ne.int(z"ab11111111",int(o'1',4))) write(6,*) "NG"
if (i2.ne.int(z"ab11111111",int(o'2',4))) write(6,*) "NG"
if (i3.ne.int(z"ab11111111",int(o'4',4))) write(6,*) "NG"

if (i001.ne.int(z"ab11111111",int(z'1',4))) write(6,*) "NG"
if (i002.ne.int(z"ab11111111",int(z'2',4))) write(6,*) "NG"

if (i0001.ne.int(z"ab11111111",int(b'1',4))) write(6,*) "NG"

end
