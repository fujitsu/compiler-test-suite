      call pro
      print *,'pass'
      end
      subroutine pro
      structure /str1/
       integer i1
      endstructure
      record /str1/ s1
      structure /str2/
       record /str1/ s2
       integer i2
      endstructure
      record /str2/ s3
      structure /str3/
        record /str2/ s4
      endstructure
      record /str3/ s5
      call sub1(s3)
      s3.i2=45
      call sub1(s3)
      call sub2(s1)
      s1.i1=100
      call sub2(s1)
      call sub3(s3)
      s3.s2.i1=100
      call sub3(s3)
      call sub4(s5)
      s5.s4.s2.i1=20
      call sub4(s5)
      end
      subroutine sub1(s3)
      structure /str1/
       integer i1
      endstructure
      record /str1/ s1
      structure /str2/
       record /str1/ s2
       integer i2
      endstructure
      record /str2/ s3
      work=s3.i2
      end
      subroutine sub2(s1)
      structure /str1/
       integer i1
      endstructure
      record /str1/ s1
      work=s1.i1
      end
      subroutine sub3(s3)
      structure /str1/
       integer i1
      endstructure
      record /str1/ s1
      structure /str2/
       record /str1/ s2
       integer i2
      endstructure
      record /str2/ s3
      work=s3.s2.i1
      end
      subroutine sub4(s5)
      structure /str1/
       integer i1
      endstructure
      record /str1/ s1
      structure /str2/
       record /str1/ s2
       integer i2
      endstructure
      record /str2/ s3
      structure /str3/
        record /str2/ s4
      endstructure
      record /str3/ s5
      work=s5.s4.s2.i1
      end
