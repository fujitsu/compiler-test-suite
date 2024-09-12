      call sub1()
      print *,'pass'
      end
      subroutine sub1()
      integer a(10,10)
      i=10
      call sss01(a,'X')
      call sss02(a,14)
      call sss03(a,3)
      call sss04(a,' 23 5 7 90     ')
      call sss05(a,5)
      call sss06(a,' 23 5 7 9v')
      call sss07(a,'vvvvvvvvvv')
      call sss08(a,10)
      call sss09(a,10)
      call sss10(a,1)
      call sss11(a,4)
      call sss12(a,1)
      call sss13(a,1.0)
      call sss14(a,1.0)
      call sss15(a,1.0)
      call sss16(a,1)
      call sss17(a,1)
      call sss18(a,88 )
      call sss19(a,' ')
      call sss20(a,' ')
      call sss21(a,'a'   )
      call sss22(a,a(1,:))
      call sss23(a,10)
      call sss24(a,'1234567890 ')
      call sss25(a,a(1,:))
      call sss26(a,a(1,:))
      call sss27(a,1.0)
      call sss28(a,1)
      call sss29(a,1.0)
      contains
       subroutine sss29(b,j)
       integer ,parameter :: k=ubound((/(tiny(1.0),i=1,10)/),1)      
       real j          
       integer b(ubound((/(tiny   (j),i=1,10)/),1),
     -           ubound((/(tiny   (1.0),i=1,10)/),1))
       b=k
       end subroutine
       subroutine sss28(b,j)
       integer ,parameter :: k=ubound((/(huge   (1),i=1,10)/),1)      
       integer b(ubound((/(huge   (j),i=1,10)/),1),
     -           ubound((/(huge   (1),i=1,10)/),1))
       b=k
       end subroutine
       subroutine sss27(b,j)
       integer ,parameter :: k=ubound((/(epsilon(1.0),i=1,10)/),1)      
       real j          
       integer b(ubound((/(epsilon(j),i=1,10)/),1),
     -           ubound((/(epsilon(1.0),i=1,10)/),1))
       b=k
       end subroutine
       subroutine sss26(b,j)
       integer ,parameter :: k=ubound(shape((/(i,i=1,10)/)),1)      
       integer j(:)    
       integer b(ubound(shape(j),1),ubound(shape((/(i,i=1,10)/)),1))
       b=k
       end subroutine
       subroutine sss25(b,j)
       integer ,parameter :: k=size((/(i,i=1,10)/))      
       integer j(:)    
       integer b(size(j),size((/(i,i=1,10)/)))
       b=k
       end subroutine
       subroutine sss24(b,j)
       integer ,parameter :: k=len(trim('1234567890 '))
       character*(*) j
       integer b(len(trim(j)),len(trim('1234567890 ')))
       b=k
       end subroutine
       subroutine sss23(b,j)
       integer ,parameter :: k=transfer(10,10)
       integer b(transfer(j,10),transfer(10,10))
       b=k
       end subroutine
       subroutine sss22(b,j)
       integer ,parameter :: k=ubound(reshape((/1,2/),(/1,2/)),2)   
       integer j(:)     
       integer b(lbound(reshape(j,(/1,10/)),1):
     -           ubound(reshape(j,(/1,10/)),2),
     -           lbound(reshape((/(i,i=1,10)/),(/1,2/)),1):
     -           ubound(reshape((/(i,i=1,10)/),(/1,10/)),2))
       b=k
       end subroutine
       subroutine sss21(b,j)
       integer ,parameter :: k=len(repeat('a',10))   
       character*(*) j
       integer b(len(repeat(j,10)) ,len(repeat('a',10)) )
       b=k
       end subroutine
       subroutine sss20(b,j)
       integer ,parameter :: k=len(repeat('a',10))   
       character*(*) j
       integer b(len(repeat(j,10)) ,len(repeat('a',10)) )
       b=k
       end subroutine
       subroutine sss19(b,j)
       integer ,parameter :: k=len(adjustl('a'))   
       character*(*) j
       integer b(len(adjustl(j))+9 ,len(adjustl('a'))+9 )
       b=k
       end subroutine
       subroutine sss18(b,j)
       integer ,parameter :: k=len(achar(88))   
       integer b(len(achar(j))+9 ,len(achar(88))+9 )
       b=k
       end subroutine
       subroutine sss17(b,j)
       integer ,parameter :: k=range      (1.0)
       integer b(range      (j)+1,range      (1)+1)
       b=k
       end subroutine
       subroutine sss16(b,j)
       integer ,parameter :: k=radix      (1.0)
       integer b(radix      (j)+8,radix      (1.0)+8)
       b=k
       end subroutine
       subroutine sss15(b,a)
       integer ,parameter :: k=precision  (1.0)
       integer b(precision  (a)+4,precision  (1.0)+4)
       b=k
       end subroutine
       subroutine sss14(b,a)
       integer ,parameter :: k=minexponent(1.0)
       integer b(minexponent(a)+135,minexponent(1.0)+135)
       b=k
       end subroutine
       subroutine sss13(b,a)
       integer ,parameter :: k=maxexponent(1.0)
       integer b(maxexponent(a)-118,maxexponent(1.0)-118)
       b=k
       end subroutine
       subroutine sss12(b,j)
       integer ,parameter :: k=digits(1)
       integer b(digits(j)-21,digits(1)-21)
       b=k
       end subroutine
       subroutine sss11(b,j)
       integer ,parameter :: k=kind(4)
       integer b(kind(j)+6,kind(4)+6)
       b=k
       end subroutine
       subroutine sss10(b,j)
       integer ,parameter :: k=bit_size(1)
       integer b(bit_size(j)-22,bit_size(1)-22)
       b=k
       end subroutine
       subroutine sss09(b,j)
       integer ,parameter :: k=selected_real_kind(10)
       integer b(selected_real_kind(j)+2,selected_real_kind(10)+2)
       b=k
       end subroutine
       subroutine sss08(b,j)
       integer ,parameter :: k=selected_int_kind(10)
       integer b(selected_int_kind(j)+2,selected_int_kind(10)+2)
       b=k
       end subroutine
       subroutine sss07(b,j)
       integer ,parameter :: k=verify('vvvvvvvvvvv','v')
       character*(*) j
       integer b(verify(j,'v'),verify('vvvvvvvvvvv','v'))
       b=k
       end subroutine
       subroutine sss06(b,j)
       integer ,parameter :: k=scan('123456 89v','v')
       character*(*) j
       integer b(scan(j,'v'),scan('123456 89v','v'))
       b=k
       end subroutine
       subroutine sss05(b,j)
       integer ,parameter :: k=modulo(8,5)
       integer b(modulo(j,5)+7,modulo(8,5)+7)
       b=k
       end subroutine
       subroutine sss04(b,j)
       integer ,parameter :: k=len_trim('123456 899 ')
       character*(*) j
       integer b(len_trim(j),len_trim('123456 899 '))
       b=k
       end subroutine
       subroutine sss03(b,j)
       integer ,parameter :: k=ishftc(3,2,3) 
       integer b(ishftc(j,2,3)+5,ishftc(3,2,3)+5)
       b=k
       end subroutine
       subroutine sss02(b,j)
       integer ,parameter :: k=ibits(14,1,3) 
       integer b(ibits(j,1,3)+3,ibits(14,1,3)+3)
       b=k
       end subroutine
       subroutine sss01(b,j)
       integer ,parameter :: k=iachar('X') 
       character j 
       integer b(iachar(j)-78,iachar('X')-78)
       b=k
       end subroutine
      end
