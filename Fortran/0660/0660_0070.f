      print *,'pass'
      end

      subroutine sub(ifun)
      external ifun
      end
      subroutine saa(ifun)
      external ifun
      end
      function   isub(ifun)
      external ifun
      isub=1
      end
      function   isaa(ifun)
      external ifun
      isaa=1
      end

      function ifun0()
      ifun0=1
      call sub(ifun0)
      end
      recursive function ifun1()
      ifun1=1
      call sub(ifun1)
      end
      recursive function ifun2() result(iff)
      call sub(ifun2)
      iff=1
      end
      function ifun3() result(iff)
      call sub(ifun3)
      iff=1
      end
      function ifun4()
      ifun4=1
      call = isub(ifun4)
      end
      recursive function ifun5()
      ifun5=1
      call = isub(ifun5)
      end
      recursive function ifun6() result(iff)
      call = isub(ifun6)
      iff=1
      end
      function ifun7() result(iff)
      call = isub(ifun7)
      iff=1
      end

      subroutine sss1()
      call saa(sss1)
      end
      recursive subroutine sss2()
      call saa(sss2)
      end
      subroutine sss3()
      call = isaa(sss3)
      end
      recursive subroutine sss4()
      call = isaa(sss4)
      end

      function ifun01()
      ifun01=1
      contains
      subroutine www()
      call sub(ifun01)
      end subroutine
      end
      recursive function ifun11()
      ifun11=1
      contains
      subroutine www()
      call sub(ifun11)
      end subroutine
      end
      recursive function ifun21() result(iff)
      iff=1
      contains
      subroutine www()
      call sub(ifun21)
      end subroutine
      end
      function ifun31() result(iff)
      iff=1
      contains
      subroutine www()
      call sub(ifun31)
      end subroutine
      end
      function ifun41()
      ifun41=1
      contains
      subroutine www()
      call = isub(ifun41)
      end subroutine
      end
      recursive function ifun51()
      ifun51=1
      contains
      subroutine www()
      call = isub(ifun51)
      end subroutine
      end
      recursive function ifun61() result(iff)
      iff=1
      contains
      subroutine www()
      call = isub(ifun61)
      end subroutine
      end
      function ifun71() result(iff)
      iff=1
      contains
      subroutine www()
      call = isub(ifun71)
      end subroutine
      end

      subroutine sss11()
      contains
      subroutine www()
      call saa(sss11)
      end subroutine
      end
      recursive subroutine sss21()
      contains
      subroutine www()
      call saa(sss21)
      end subroutine
      end
      subroutine sss31()
      contains
      subroutine www()
      call = isaa(sss31)
      end subroutine
      end
      recursive subroutine sss41()
      contains
      subroutine www()
      call = isaa(sss41)
      end subroutine
      end

      module mod01
      contains
      function ifun011()
      ifun011=1
      contains
      subroutine www()
      call sub(ifun011)
      end subroutine
      end function
      recursive function ifun111()
      ifun111=1
      contains
      subroutine www()
      call sub(ifun111)
      end subroutine
      end function
      recursive function ifun211() result(iff)
      iff=1
      contains
      subroutine www()
      call sub(ifun211)
      end subroutine
      end function
      function ifun311() result(iff)
      iff=1
      contains
      subroutine www()
      call sub(ifun311)
      end subroutine
      end function
      function ifun411()
      ifun411=1
      contains
      subroutine www()
      call = isub(ifun411)
      end subroutine
      end function
      recursive function ifun511()
      ifun511=1
      contains
      subroutine www()
      call = isub(ifun511)
      end subroutine
      end function
      recursive function ifun611() result(iff)
      iff=1
      contains
      subroutine www()
      call = isub(ifun611)
      end subroutine
      end function
      function ifun711() result(iff)
      iff=1
      contains
      subroutine www()
      call = isub(ifun711)
      end subroutine
      end function

      subroutine sss111()
      contains
      subroutine www()
      call saa(sss111)
      end subroutine
      end subroutine
      recursive subroutine sss211()
      contains
      subroutine www()
      call saa(sss211)
      end subroutine
      end subroutine
      subroutine sss311()
      contains
      subroutine www()
      call = isaa(sss311)
      end subroutine
      end subroutine
      recursive subroutine sss411()
      contains
      subroutine www()
      call = isaa(sss411)
      end subroutine
      end subroutine
      end

      module mod02
      contains
      function ifun0111()
      ifun0111=1
      call sub(ifun0111)
      end function
      recursive function ifun1111()
      ifun1111=1
      call sub(ifun1111)
      end function
      recursive function ifun2111() result(iff)
      iff=1
      call sub(ifun2111)
      end function
      function ifun3111() result(iff)
      iff=1
      call sub(ifun3111)
      end function
      function ifun4111()
      ifun4111=1
      call = isub(ifun4111)
      end function
      recursive function ifun5111()
      ifun5111=1
      call = isub(ifun5111)
      end function
      recursive function ifun6111() result(iff)
      iff=1
      call = isub(ifun6111)
      end function
      function ifun7111() result(iff)
      iff=1
      call = isub(ifun7111)
      end function

      subroutine sss1111()
      call saa(sss1111)
      end subroutine
      recursive subroutine sss2111()
      call saa(sss2111)
      end subroutine
      subroutine sss3111()
      call = isaa(sss3111)
      end subroutine
      recursive subroutine sss4111()
      call = isaa(sss4111)
      end subroutine
      end
