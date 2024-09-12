call test01()
print *,"pass"
end
subroutine test01()
integer(kind=8) ,parameter  :: i01=int(z"1111" ,1)
integer(kind=8) ,parameter  :: i02=int(z"1111" ,kind=1)
integer(kind=8) ,parameter  :: i03=int(a=z"1111" ,kind=1)
integer(kind=8) ,parameter  :: i04=int(kind=1,a=z"1111")
integer(kind=8) ,parameter  :: i05=int(a=z"1111" ,kind=5-1)
integer(kind=8) ,parameter  :: i06=int(a=z"1111" ,kind=(int(1)))
if (i01.eq.i05) call errtra
if (i02.ne.i06) call errtra
if (i03.ne.i04) call errtra

end
