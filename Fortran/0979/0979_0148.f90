call test01()
call test02()
call test03()
print *,"pass"
end

subroutine test01()

integer(kind=8) ,parameter  :: i01=(int(z"ab11111111",kind=1))
integer(kind=8) ,parameter  :: i02=(int(z"ab11111111",kind=2))
integer(kind=8) ,parameter  :: i03=(int(z"ab11111111",kind=4))
integer(kind=8) ,parameter  :: i04=(int(z"ab11111111",kind=8))
integer(kind=4) ,parameter :: i1=int(z"ab11111111",kind=1)
integer(kind=4) ,parameter :: i2=int(z"ab11111111",kind=2)
integer(kind=4) ,parameter :: i3=int(z"ab11111111",kind=4)
integer(kind=2) ,parameter :: i001=int(z"ab11111111",kind=1)
integer(kind=2) ,parameter :: i002=int(z"ab11111111",kind=2)
integer(kind=1) ,parameter :: i0001=int(z"ab11111111",kind=1)

if (i01.ne.int(z"ab11111111",kind=1)) write(6,*) "NG"
if (i02.ne.int(z"ab11111111",kind=2)) write(6,*) "NG"
if (i03.ne.int(z"ab11111111",kind=4)) write(6,*) "NG"
if (i04.ne.int(z"ab11111111",kind=8)) write(6,*) "NG"

if (i1.ne.int(z"ab11111111",kind=1)) write(6,*) "NG"
if (i2.ne.int(z"ab11111111",kind=2)) write(6,*) "NG"
if (i3.ne.int(z"ab11111111",kind=4)) write(6,*) "NG"

if (i001.ne.int(z"ab11111111",kind=1)) write(6,*) "NG"
if (i002.ne.int(z"ab11111111",kind=2)) write(6,*) "NG"

if (i0001.ne.int(z"ab11111111",kind=1)) write(6,*) "NG"

end

subroutine test02()

integer(kind=8) ,parameter  :: i01=int(kind=8,a=b'1111111111111')
integer(kind=8) ,parameter  :: i02=int(kind=8,a=o'1234567')
integer(kind=8) ,parameter  :: i03=int(kind=8,a=z'abcdef')
integer(kind=4) ,parameter  :: i04=int(kind=4,a=b'1111111111111')
integer(kind=4) ,parameter  :: i05=int(kind=4,a=o'1234567')
integer(kind=4) ,parameter  :: i06=int(kind=4,a=z'abcdef')
integer(kind=2) ,parameter  :: i07=int(kind=2,a=b'1111111111111')
integer(kind=2) ,parameter  :: i08=int(kind=2,a=o'12345')
integer(kind=2) ,parameter  :: i09=int(kind=2,a=z'abc')
integer(kind=1) ,parameter  :: i10=int(kind=1,a=b'1111111')
integer(kind=1) ,parameter  :: i11=int(kind=1,a=o'123')
integer(kind=1) ,parameter  :: i12=int(kind=1,a=z'a')

if (i01.ne.int(kind=8,a=b'1111111111111')) write(6,*) "NG"
if (i02.ne.int(kind=8,a=o'1234567')) write(6,*) "NG"
if (i03.ne.int(kind=8,a=z'abcdef')) write(6,*) "NG"
if (i04.ne.int(kind=4,a=b'1111111111111')) write(6,*) "NG"
if (i05.ne.int(kind=4,a=o'1234567')) write(6,*) "NG"
if (i06.ne.int(kind=4,a=z'abcdef')) write(6,*) "NG"
if (i07.ne.int(kind=2,a=b'1111111111111')) write(6,*) "NG"
if (i08.ne.int(kind=2,a=o'12345')) write(6,*) "NG"
if (i09.ne.int(kind=2,a=z'abc')) write(6,*) "NG"
if (i10.ne.int(kind=1,a=b'1111111')) write(6,*) "NG"
if (i11.ne.int(kind=1,a=o'123')) write(6,*) "NG"
if (i12.ne.int(kind=1,a=z'a')) write(6,*) "NG"

end subroutine

subroutine test03()

integer(kind=8) ,parameter :: i01(1)=(/int(z"ab11111111",kind=int(b'1',4))/)
integer(kind=8) ,parameter :: i02(1)=(/int(z"ab11111111",kind=int(b'10',4))/)
integer(kind=8) ,parameter :: i03(1)=(/int(z"ab11111111",kind=int(o'4',4))/)
integer(kind=8) ,parameter :: i04(1)=(/int(z"ab11111111",kind=int(b'1000',4))/)
integer(kind=4) ,parameter :: i1(1)=(/int(z"ab11111111",kind=int(z'1',4))/)
integer(kind=4) ,parameter :: i2(1)=(/int(z"ab11111111",kind=int(o'2',4))/)
integer(kind=4) ,parameter :: i3(1)=(/int(z"ab11111111",kind=int(b'100',4))/)
integer(kind=2) ,parameter :: i001(1)=(/int(z"ab11111111",kind=int(z'1',4))/)
integer(kind=2) ,parameter :: i002(1)=(/int(z"ab11111111",kind=int(b'10',4))/)
integer(kind=1) ,parameter :: i0001(1)=(/int(z"ab11111111",kind=int(b'1',4))/)

if (i01(1).ne.int(z"ab11111111",int(b'1',1))) write(6,*) "NG"
if (i02(1).ne.int(z"ab11111111",int(b'10',2))) write(6,*) "NG"
if (i03(1).ne.int(z"ab11111111",int(b'100',4))) write(6,*) "NG"
if (i04(1).ne.int(z"ab11111111",int(b'1000',8))) write(6,*) "NG"

if (i1(1).ne.int(z"ab11111111",int(o'1',4))) write(6,*) "NG"
if (i2(1).ne.int(z"ab11111111",int(o'2',4))) write(6,*) "NG"
if (i3(1).ne.int(z"ab11111111",int(o'4',4))) write(6,*) "NG"

if (i001(1).ne.int(z"ab11111111",int(z'1',2))) write(6,*) "NG"
if (i002(1).ne.int(z"ab11111111",int(z'2',2))) write(6,*) "NG"

if (i0001(1).ne.int(z"ab11111111",int(b'1',1))) write(6,*) "NG"

end
