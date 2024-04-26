program main
  character(len=5) cc1(10),cc2(10)

  cc1(1:10)(1:5) ='abcde'
  cc2(1:10)(1:5) ='abcdN'

  call ckchr(cc1,cc2,10,3)
  call ckchr(cc1,cc2,10,4)
  call ckchr(cc1,cc2,10,5)
end program main

subroutine ckchr(cc1,cc2,i,k)
   character(len=5) cc1(i),cc2(i)
   do  jj=1,i
      if(cc1(jj)(1:k).ne.cc2(jj)(1:k)) then
         goto 30
      endif
   enddo
   print *,"OK"
30 return
end subroutine ckchr
