       implicit double precision (a-h,o-z)
       dimension dmy(100),fff(38)
       dimension ieuv(100,25),ntb(100)
       data dmy/100*0/
       data fff/38*1/
       data ieuv/2500*2/
       data ntb/100*3/
       im = 1
       do i=1,9
         i6 = i + 25
         ii = ieuv(im,i)
         ii6 = ntb(ii) + 5
         dmy(ii6) = dmy(ii6) + fff(i6)
         do j=1,9
         enddo
       enddo
       print*, dmy(1)
       end 
