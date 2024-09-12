      call pro
      print *,'pass'
      end
      subroutine pro
      structure /strty_s/
       integer int1
       integer int12
      endstructure
      record /strty_s/ str1,str2(10)
      structure /strty_v/
       integer int2(10)
      endstructure
      record /strty_v/ str3,str4(10)
      structure /strty_r/
       record /strty_s/ str_m1
       record /strty_s/ str_m2(10)
       record /strty_v/ str_m3
       record /strty_v/ str_m4(10)
      endstructure
      record /strty_r/ str5
      str1.int1=12
      work=str1.int1
      work=str1.int12
      str2(1).int1=100
      work=str2(1).int1
      work=str2(3).int1
      str3.int2(4)=45
      work=str3.int2(4)
      work=str3.int2(7)
      str4(5).int2(6)=10
      work=str4(5).int2(6)
      work=str4(3).int2(6)
      str5.str_m1.int1=19
      work=str5.str_m1.int1
      str5.str_m2(3).int1=49
      work=str5.str_m2(3).int1
      work=str5.str_m2(8).int1
      end
