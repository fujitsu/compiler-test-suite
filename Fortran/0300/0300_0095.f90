      program main
      character(len=1), parameter :: ch01=char(1)
      character(len=1), parameter :: ch02=char(2)
      character(len=1), parameter :: ch03=char(3)
      character(len=1), parameter :: ch04=char(4)
      character(len=1), parameter :: ch05=char(5)
      character(len=1), parameter :: ch06=char(6)
      character(len=1), parameter :: ch07=char(7)
      character(len=1), parameter :: ch08=char(8)
      character(len=1), parameter :: ch09=char(9)

      character(len=1), parameter :: ch0a=char(10)
      character(len=1), parameter :: ch0b=char(11)
      character(len=1), parameter :: ch0c=char(12)
      character(len=1), parameter :: ch0d=char(13)
      character(len=1), parameter :: ch0e=char(14)
      character(len=1), parameter :: ch0f=char(15)
      character(len=1), parameter :: ch10=char(16)
      character(len=1), parameter :: ch11=char(17)
      character(len=1), parameter :: ch12=char(18)
      character(len=1), parameter :: ch13=char(19)
      character(len=1), parameter :: ch14=char(20)
      character(len=1), parameter :: ch15=char(21)
      character(len=1), parameter :: ch16=char(22)
      character(len=1), parameter :: ch17=char(23)
      character(len=1), parameter :: ch18=char(24)
      character(len=1), parameter :: ch19=char(25)
      character(len=1), parameter :: ch1a=char(26)
      character(len=1), parameter :: ch1b=char(27)
      character(len=1), parameter :: ch1c=char(28)
      character(len=1), parameter :: ch1d=char(29)
      character(len=1), parameter :: ch1e=char(30)
      character(len=1), parameter :: ch1f=char(31)
      character(len=1), parameter :: ch20=char(32)
      character(len=1), parameter :: ch7f=char(127)

      character(len=4) :: str1
      integer :: col

      str1 = 'abc'//ch01
      col = index(str1,ch01)
      print *,col

      str1 = 'abc'//ch02
      col = index(str1,ch02)
      print *,col

      str1 = 'abc'//ch03
      col = index(str1,ch03)
      print *,col

      str1 = 'abc'//ch04
      col = index(str1,ch04)
      print *,col

      str1 = 'abc'//ch05
      col = index(str1,ch05)
      print *,col

      str1 = 'abc'//ch06
      col = index(str1,ch06)
      print *,col

      str1 = 'abc'//ch07
      col = index(str1,ch07)
      print *,col

      str1 = 'abc'//ch08
      col = index(str1,ch08)
      print *,col

      str1 = 'abc'//ch09
      col = index(str1,ch09)
      print *,col

      str1 = 'abc'//ch0a
      col = index(str1,ch0a)
      print *,col

      str1 = 'abc'//ch0b
      col = index(str1,ch0b)
      print *,col

      str1 = 'abc'//ch0c
      col = index(str1,ch0c)
      print *,col

      str1 = 'abc'//ch0d
      col = index(str1,ch0d)
      print *,col

      str1 = 'abc'//ch0e
      col = index(str1,ch0e)
      print *,col

      str1 = 'abc'//ch0f
      col = index(str1,ch0f)
      print *,col

      str1 = 'abc'//ch10
      col = index(str1,ch10)
      print *,col

      str1 = 'abc'//ch11
      col = index(str1,ch11)
      print *,col

      str1 = 'abc'//ch12
      col = index(str1,ch12)
      print *,col

      str1 = 'abc'//ch13
      col = index(str1,ch13)
      print *,col

      str1 = 'abc'//ch14
      col = index(str1,ch14)
      print *,col

      str1 = 'abc'//ch15
      col = index(str1,ch15)
      print *,col

      str1 = 'abc'//ch16
      col = index(str1,ch16)
      print *,col

      str1 = 'abc'//ch17
      col = index(str1,ch17)
      print *,col

      str1 = 'abc'//ch18
      col = index(str1,ch18)
      print *,col

      str1 = 'abc'//ch19
      col = index(str1,ch19)
      print *,col

      str1 = 'abc'//ch1a
      col = index(str1,ch1a)
      print *,col

      str1 = 'abc'//ch1b
      col = index(str1,ch1b)
      print *,col

      str1 = 'abc'//ch1c
      col = index(str1,ch1c)
      print *,col

      str1 = 'abc'//ch1d
      col = index(str1,ch1d)
      print *,col

      str1 = 'abc'//ch1e
      col = index(str1,ch1e)
      print *,col

      str1 = 'abc'//ch1f
      col = index(str1,ch1f)
      print *,col

      str1 = 'abc'//ch20
      col = index(str1,ch20)
      print *,col

      str1 = 'abc'//ch7f
      col = index(str1,ch7f)
      print *,col

      end
