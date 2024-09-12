program main
INTEGER*4,parameter::para(4) = (/-1_4, -2_4, 4_4, -4_4/)
integer::i
LOGICAL::frontres(4) = IS_IOSTAT_eor(para)
logical::backres(4)
integer*4::kinfront = kind(is_iostat_eor(para))
integer*4::kinback
kinback = kind(is_iostat_eor(para))
backres = is_iostat_eor(para)

do i=1,4
if (frontres(i).eqv.backres(i)) then
print*," I4->L2 OK"
else
print*," I4->L2 ERROR"
endif
enddo

call check1(kinfront,kinback)
END

      subroutine check1(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine
