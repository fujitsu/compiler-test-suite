call test01()
print *,"pass"
end
subroutine test01()
integer(kind=8) ,parameter  :: i01=(int(z"ab11111111",1))
integer(kind=8) ,parameter  :: i02=(int(z"ab11111111",2))
integer(kind=8) ,parameter  :: i03=(int(z"ab11111111",4))
integer(kind=8) ,parameter  :: i04=(int(z"ab11111111",8))
if (i01.ne.int(z"ab11111111",1)) call errtra
if (i02.ne.int(z"ab11111111",2)) call errtra
if (i03.ne.int(z"ab11111111",4)) call errtra
if (i04.ne.int(z"ab11111111",8)) call errtra

end
