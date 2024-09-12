      program main
      call sub1()

      print *,'pass'
      end

      subroutine sub1()
      logical ans(200),lfun,lfun2,lfun3,ll
      character*2 c1,c2,c3,c4
      character*6 ch6
      dimension c4(10)
      data ans/200*.true./
      data c4/'01','02','03','04','05','06','07','08','09','10'/
      c1='ab'
      c2='cd'
      c3='ef'
      ans(  1)='abcdef'.ne.'abcdef'
      ans(  2)='ab'//'cd'//'ef'.ne.'abcdef'
      ans(  3)='ab'//('cd')//'ef'.ne.'abcdef'
      ans(  4)='ab'//(('cd'))//'ef'.ne.'abcdef'
      ans(  5)=.not.'ab'//(('cd'))//'ef'.eq.'abcdef'
      ans(  6)=.not.'ab'//(('cd')//'ef').eq.'abcdef'
      ans(  7)=.not.'ab'//('cd'//'ef').eq.'abcdef'
      ans(  8)=.not.'ab'//'cd'//(('ef')).eq.'abcdef'
      ans(  9)=.not.'ab'//((('cd')//'ef')).eq.'abcdef'
      ans( 10)=.not.('ab')//(('cd'))//('ef').eq.'abcdef'
      ans( 11)=.not.'ab'//c2//'ef'.eq.'abcdef'
      ans( 12)='ab'//c2//'ef'.ne.'abcdef'
      ans( 13)='ab'//(c2)//'ef'.ne.'abcdef'
      ans( 14)='ab'//((c2))//'ef'.ne.'abcdef'
      ans( 15)=.not.'ab'//((c2))//'ef'.eq.'abcdef'
      ans( 16)=.not.'ab'//((c2)//'ef').eq.'abcdef'
      ans( 17)=.not.'ab'//(c2//'ef').eq.'abcdef'
      ans( 18)=.not.'ab'//c2//(('ef')).eq.'abcdef'
      ans( 19)=.not.'ab'//(((c2)//'ef')).eq.'abcdef'
      ans( 20)=.not.('ab')//((c2))//('ef').eq.'abcdef'
      ans( 21)=.not.c1//c2//'ef'.eq.'abcdef'
      ans( 22)=c1//c2//'ef'.ne.'abcdef'
      ans( 23)=c1//(c2)//'ef'.ne.'abcdef'
      ans( 24)=c1//((c2))//'ef'.ne.'abcdef'
      ans( 25)=.not.c1//((c2))//'ef'.eq.'abcdef'
      ans( 26)=.not.c1//((c2)//'ef').eq.'abcdef'
      ans( 27)=.not.c1//(c2//'ef').eq.'abcdef'
      ans( 28)=.not.c1//c2//(('ef')).eq.'abcdef'
      ans( 29)=.not.c1//(((c2)//'ef')).eq.'abcdef'
      ans( 30)=.not.(c1)//((c2))//('ef').eq.'abcdef'
      ans( 31)=.not.c1//c2//c4(1).eq.'abcd01'
      ans( 32)=c1//c2//c4(1).ne.'abcd01'
      ans( 33)=c1//(c2)//c4(1).ne.'abcd01'
      ans( 34)=c1//((c2))//c4(1).ne.'abcd01'
      ans( 35)=.not.c1//((c2))//c4(1).eq.'abcd01'
      ans( 36)=.not.c1//((c2)//c4(1)).eq.'abcd01'
      ans( 37)=.not.c1//(c2//c4(1)).eq.'abcd01'
      ans( 38)=.not.c1//c2//((c4(1))).eq.'abcd01'
      ans( 39)=.not.c1//(((c2)//c4(1))).eq.'abcd01'
      ans( 40)=.not.(c1)//((c2))//(c4(1)).eq.'abcd01'
      ans( 41)=.not.c1//c4(2)//c4(1).eq.'ab0201'
      ans( 42)=c1//c4(2)//c4(1).ne.'ab0201'
      ans( 43)=c1//(c4(2))//c4(1).ne.'ab0201'
      ans( 44)=c1//((c4(2)))//c4(1).ne.'ab0201'
      ans( 45)=.not.c1//((c4(2)))//c4(1).eq.'ab0201'
      ans( 46)=.not.c1//((c4(2))//c4(1)).eq.'ab0201'
      ans( 47)=.not.c1//(c4(2)//c4(1)).eq.'ab0201'
      ans( 48)=.not.c1//c4(2)//((c4(1))).eq.'ab0201'
      ans( 49)=.not.c1//(((c4(2))//c4(1))).eq.'ab0201'
      ans( 50)=.not.(c1)//((c4(2)))//(c4(1)).eq.'ab0201'
      ans( 51)=.not.c4(3)//c4(2)//c4(1).eq.'030201'
      ans( 52)=c4(3)//c4(2)//c4(1).ne.'030201'
      ans( 53)=c4(3)//(c4(2))//c4(1).ne.'030201'
      ans( 54)=c4(3)//((c4(2)))//c4(1).ne.'030201'
      ans( 55)=.not.c4(3)//((c4(2)))//c4(1).eq.'030201'
      ans( 56)=.not.c4(3)//((c4(2))//c4(1)).eq.'030201'
      ans( 57)=.not.c4(3)//(c4(2)//c4(1)).eq.'030201'
      ans( 58)=.not.c4(3)//c4(2)//((c4(1))).eq.'030201'
      ans( 59)=.not.c4(3)//(((c4(2))//c4(1))).eq.'030201'
      ans( 60)=.not.(c4(3))//((c4(2)))//(c4(1)).eq.'030201'
      ans( 61)=.not.(c4(3)//c4(2)//c4(1).eq.'030201')
      ans( 62)=(c4(3)//c4(2)//c4(1).ne.'030201')
      ans( 63)=(c4(3)//(c4(2))//c4(1).ne.'030201')
      ans( 64)=(c4(3)//((c4(2)))//c4(1).ne.'030201')
      ans( 65)=.not.(c4(3)//((c4(2)))//c4(1).eq.'030201')
      ans( 66)=.not.(c4(3)//((c4(2))//c4(1)).eq.'030201')
      ans( 67)=.not.(c4(3)//(c4(2)//c4(1)).eq.'030201')
      ans( 68)=.not.(c4(3)//c4(2)//((c4(1))).eq.'030201')
      ans( 69)=.not.(c4(3)//(((c4(2))//c4(1))).eq.'030201')
      ans( 70)=(.not.((c4(3))//((c4(2)))//(c4(1)).eq.'030201'))
      ans( 71)=(.not.(c4(3)//c4(2)//c4(1).eq.'030201'))
      ans( 72)=((c4(3)//c4(2)//c4(1).ne.'030201'))
      ans( 73)=((c4(3)//(c4(2))//c4(1).ne.'030201'))
      ans( 74)=((c4(3)//((c4(2)))//c4(1).ne.'030201'))
      ans( 75)=(.not.(c4(3)//((c4(2)))//c4(1).eq.'030201'))
      ans( 76)=(.not.(c4(3)//((c4(2))//c4(1)).eq.'030201'))
      ans( 77)=(.not.(c4(3)//(c4(2)//c4(1)).eq.'030201'))
      ans( 78)=(.not.(c4(3)//c4(2)//((c4(1))).eq.'030201'))
      ans( 79)=(.not.(c4(3)//(((c4(2))//c4(1))).eq.'030201'))
      ans( 80)=(.not.((c4(3))//((c4(2)))//(c4(1)).eq.'030201'))
      ans( 81)=lfun(c4(3)//c4(2)//c4(1),'030201')
      ans( 82)=lfun((c4(3)//c4(2)//c4(1)),'030201')
      ans( 83)=lfun((c4(3)//(c4(2))//c4(1)),'030201')
      ans( 84)=lfun((c4(3)//((c4(2)))//c4(1)),'030201')
      ans( 85)=lfun(c4(3)//((c4(2)))//c4(1),'030201')
      ans( 86)=lfun(c4(3)//((c4(2))//c4(1)),'030201')
      ans( 87)=lfun(c4(3)//(c4(2)//c4(1)),'030201')
      ans( 88)=lfun(c4(3)//c4(2)//((c4(1))),'030201')
      ans( 89)=lfun(c4(3)//(((c4(2))//c4(1))),'030201')
      ans( 90)=lfun((c4(3))//((c4(2)))//(c4(1)),'030201')
      ans( 91)=lfun('030201',c4(3)//c4(2)//c4(1))
      ans( 92)=lfun('030201',(c4(3)//c4(2)//c4(1)))
      ans( 93)=lfun('030201',(c4(3)//(c4(2))//c4(1)))
      ans( 94)=lfun('030201',(c4(3)//((c4(2)))//c4(1)))
      ans( 95)=lfun('030201',c4(3)//((c4(2)))//c4(1))
      ans( 96)=lfun('030201',c4(3)//((c4(2))//c4(1)))
      ans( 97)=lfun('030201',c4(3)//(c4(2)//c4(1)))
      ans( 98)=lfun('030201',c4(3)//c4(2)//((c4(1))))
      ans( 99)=lfun('030201',c4(3)//(((c4(2))//c4(1))))
      ans(100)=lfun('030201',(c4(3))//((c4(2)))//(c4(1)))
      ch6='030201'
      ll=.false.   
      ans(101)=lfun2(.not.(c4(3)//c4(2)//c4(1).eq.ch6))
      ans(102)=lfun2((c4(3)//c4(2)//c4(1).ne.ch6))
      ans(103)=lfun2((c4(3)//(c4(2))//c4(1).ne.ch6))
      ans(104)=lfun2((c4(3)//((c4(2)))//c4(1).ne.ch6))
      ans(105)=lfun2(.not.(c4(3)//((c4(2)))//c4(1).eq.ch6))
      ans(106)=lfun2(.not.(c4(3)//((c4(2))//c4(1)).eq.ch6))
      ans(107)=lfun2(.not.(c4(3)//(c4(2)//c4(1)).eq.ch6))
      ans(108)=lfun2(.not.(c4(3)//c4(2)//((c4(1))).eq.ch6))
      ans(109)=lfun2(.not.(c4(3)//(((c4(2))//c4(1))).eq.ch6))
      ans(110)=lfun2(.not.((c4(3))//((c4(2)))//(c4(1)).eq.ch6))
      ans(111)=lfun3(.not.(c4(3)//c4(2)//c4(1).eq.ch6),ll)
      ans(112)=lfun3((c4(3)//c4(2)//c4(1).ne.ch6),ll)
      ans(113)=lfun3((c4(3)//(c4(2))//c4(1).ne.ch6),ll)
      ans(114)=lfun3((c4(3)//((c4(2)))//c4(1).ne.ch6),ll)
      ans(115)=lfun3(.not.(c4(3)//((c4(2)))//c4(1).eq.ch6),ll)
      ans(116)=lfun3(.not.(c4(3)//((c4(2))//c4(1)).eq.ch6),ll)
      ans(117)=lfun3(.not.(c4(3)//(c4(2)//c4(1)).eq.ch6),ll)
      ans(118)=lfun3(.not.(c4(3)//c4(2)//((c4(1))).eq.ch6),ll)
      ans(119)=lfun3(.not.(c4(3)//(((c4(2))//c4(1))).eq.ch6),ll)
      ans(120)=lfun3(.not.((c4(3))//((c4(2)))//(c4(1)).eq.ch6),ll)

      ans(121)=lfun2(.not.c4(3)//c4(2)//c4(1).eq.ch6)
      ans(122)=lfun2(c4(3)//c4(2)//c4(1).ne.ch6)
      ans(123)=lfun2(c4(3)//(c4(2))//c4(1).ne.ch6)
      ans(124)=lfun2(c4(3)//((c4(2)))//c4(1).ne.ch6)
      ans(125)=lfun2(.not.c4(3)//((c4(2)))//c4(1).eq.ch6)
      ans(126)=lfun2(.not.c4(3)//((c4(2))//c4(1)).eq.ch6)
      ans(127)=lfun2(.not.c4(3)//(c4(2)//c4(1)).eq.ch6)
      ans(128)=lfun2(.not.c4(3)//c4(2)//((c4(1))).eq.ch6)
      ans(129)=lfun2(.not.c4(3)//(((c4(2))//c4(1))).eq.ch6)
      ans(130)=lfun2(.not.(c4(3))//((c4(2)))//(c4(1)).eq.ch6)
      ans(131)=lfun3(.not.c4(3)//c4(2)//c4(1).eq.ch6,ll)
      ans(132)=lfun3(c4(3)//c4(2)//c4(1).ne.ch6,ll)
      ans(133)=lfun3(c4(3)//(c4(2))//c4(1).ne.ch6,ll)
      ans(134)=lfun3(c4(3)//((c4(2)))//c4(1).ne.ch6,ll)
      ans(135)=lfun3(.not.c4(3)//((c4(2)))//c4(1).eq.ch6,ll)
      ans(136)=lfun3(.not.c4(3)//((c4(2))//c4(1)).eq.ch6,ll)
      ans(137)=lfun3(.not.c4(3)//(c4(2)//c4(1)).eq.ch6,ll)
      ans(138)=lfun3(.not.c4(3)//c4(2)//((c4(1))).eq.ch6,ll)
      ans(139)=lfun3(.not.c4(3)//(((c4(2))//c4(1))).eq.ch6,ll)
      ans(140)=lfun3(.not.(c4(3))//((c4(2)))//(c4(1)).eq.ch6,ll)

      ans(141)=lfun2(.not.c4(3)//c4(2)//c4(1).eq.ch6)
      ans(142)=lfun2(c4(3)//c4(2)//c4(1).ne.ch6)
      ans(143)=lfun2(c4(3)//(c4(2))//c4(1).ne.ch6)
      ans(144)=lfun2(c4(3)//((c4(2)))//c4(1).ne.ch6)
      ans(145)=lfun2(.not.c4(3)//((c4(2)))//c4(1).eq.ch6)
      ans(146)=lfun2(.not.c4(3)//((c4(2))//c4(1)).eq.ch6)
      ans(147)=lfun2(.not.c4(3)//(c4(2)//c4(1)).eq.ch6)
      ans(148)=lfun2(.not.c4(3)//c4(2)//((c4(1))).eq.ch6)
      ans(149)=lfun2(.not.c4(3)//(((c4(2))//c4(1))).eq.ch6)
      ans(150)=lfun2(.not.(c4(3))//((c4(2)))//(c4(1)).eq.ch6)
      ans(151)=lfun3(.not.c4(3)//c4(2)//c4(1).eq.ch6,ll)
      ans(152)=lfun3(c4(3)//c4(2)//c4(1).ne.ch6,ll)
      ans(153)=lfun3(c4(3)//(c4(2))//c4(1).ne.ch6,ll)
      ans(154)=lfun3(c4(3)//((c4(2)))//c4(1).ne.ch6,ll)
      ans(155)=lfun3(.not.c4(3)//((c4(2)))//c4(1).eq.ch6,ll)
      ans(156)=lfun3(.not.c4(3)//((c4(2))//c4(1)).eq.ch6,ll)
      ans(157)=lfun3(.not.c4(3)//(c4(2)//c4(1)).eq.ch6,ll)
      ans(158)=lfun3(.not.c4(3)//c4(2)//((c4(1))).eq.ch6,ll)
      ans(159)=lfun3(.not.c4(3)//(((c4(2))//c4(1))).eq.ch6,ll)
      ans(160)=lfun3(.not.(c4(3))//((c4(2)))//(c4(1)).eq.ch6,ll)
      do 10 i=1,160
       if (ans(i).eqv..true.) print *,i   
 10   continue
      end

      function lfun(cha1,cha2)
      logical lfun
      character*6 cha1,cha2
      lfun=.not.(cha1.eq.cha2)
      end
      function lfun2(cha1)
      logical lfun2,cha1
      lfun2=cha1
      end
      function lfun3(cha1,cha2)
      logical lfun3,cha1,cha2
      if (cha1.eqv..false.) then
         if (cha2.eqv..false.) then
            lfun3=.false.
            return
         end if
      end if
      lfun3=.true.
      end
