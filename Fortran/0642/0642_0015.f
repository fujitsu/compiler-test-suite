      call pro
      print *,'pass'
      end
      subroutine pro
      structure /strty_s/
       integer int1
      endstructure
      structure /strty_v/
       integer int2(10)
      endstructure
      structure /strty_r/
       record /strty_s/ str_m1
       record /strty_s/ str_m2(10)
       record /strty_v/ str_m3
       record /strty_v/ str_m4(10)
      endstructure
      record /strty_r/ str5,str6(10)
      str5.str_m3.int2(4)=24
      work=str5.str_m3.int2(4)
      work=str5.str_m3.int2(1)
      str5.str_m4(7).int2(5)=398
      work=str5.str_m4(7).int2(5)
      work=str5.str_m4(7).int2(3)
      str6(1).str_m1.int1=34
      work=str6(1).str_m1.int1
      work=str6(7).str_m1.int1
      str6(4).str_m2(3).int1=100
      work=str6(4).str_m2(3).int1
      work=str6(2).str_m2(3).int1
      str6(8).str_m3.int2(4)=123
      work=str6(8).str_m3.int2(4)
      work=str6(8).str_m3.int2(6)
      str6(9).str_m4(7).int2(5)=234
      work=str6(9).str_m4(7).int2(5)
      work=str6(9).str_m4(7).int2(4)
      end
