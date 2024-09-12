      character*4 cha
      character*3 cfun , cfun2 , cfun3 , cfun4 ,cfun5

      cfun(cha) = cha(1:3)
      cfun2(cha) = cha(1:2)//'2'
      cfun3() = cha(1:3)
      cfun5(cha) = cha
      cfun4(cha) = cfun5(cha(1:2)//'2')

      if (cfun('abc') .ne. 'abc')  print *,'err 1'
      cha(1:4) = '1234'
      if (cfun('abc') .ne. 'abc')  print *,'err 2'
      if (cfun2('abc') .ne. 'ab2') print *,'err 3'
      if (cfun3() .ne. '123')      print *,'err 4'
      if (cfun(cha  ) .ne. '123')  print *,'err 5'
      if (cfun4('abc') .ne. 'ab2') print *,'err 6'
      call sub1()
      call sub2()
      print *,'pass'
      end
      subroutine sub1()
      character*10 cha
      character   cf1*1,cf2*2,cf3*3,cf5*5,cf10*10
      logical*4 lfun1,lfun2
       integer a(10),b(10)
       data a /1,2,3,4,5,6,7,8,9,10/
       data b /1,2,3,4,5,6,7,8,9,10/
      cf1(cha) = cha(1:1)
      cf2()    = cf1('a')//cf1('b')
      cf3(cha,i) = cha(1:i)
      cf5(cha,i,j) = cha(a(i):b(j))
      cf10(cha)='123'//cf1('4')//cf1('5')//cf5('abcde',1,5)
      lfun1(cha) = ('12345'//cf5(cf2()//cf1('c')//cf1('d')//cf1('e')
     -   ,1,5) ).ne. '12345abcde'
      lfun2(cha,j) = (cha(1:5)//cf5(cf2()//cf1('c')//
     -       cf1(cha(j:9))//cf1(cha(10:10))
     -   ,1,i) )  .ne. '12345abcde'
      if (lfun1('12')) print *,'sub1 err 1'
      i=5
      if (lfun2('12345abcde',9)) print *,'sub1 err 2'
      if (cf10('1').ne.'12345abcde') print *,'sub1 err 3'
      if (cf3('123',3).ne.'123') print *,'sub1 err 4'
      if (cf3('123',2).ne.'12') print *,'sub1 err 5'

      end
      subroutine sub2()
      character*5 cha ,chb     
      character*5 if1,if2,if3,if4,if5

      if1(cha) = '1'//cha
      if2(cha) = if1(cha(1:5))
      if3(cha) = if2(cha)
      if4(cha) = if3(cha//'aaa')
      if5(cha,chb) = if4(cha(1:3)//chb(1:2))

      if (if5('abc','de').ne.'1abcd') print *,'sub2 err  1'
      cha='abcde'
      chb='de123' 
      if (if5(cha,chb).ne.'1abcd') print *,'sub2 err  2'
      if (if5(cha(1:3),chb(1:2)).ne.'1abcd') print *,'sub2 err  3'
      if (if5('123','de').ne.'1123d') print *,'sub2 err  4'
      if (if5('abc',chb).ne.'1abcd') print *,'sub2 err  5'
      if (if5('abc','d'//chb(2:2)).ne.'1abcd') print *,'sub2 err  6'

      end
