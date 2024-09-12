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
      work=s3.i2
      s3.i2=45
      work=s3.i2
      work=s1.i1
      s3.i2=45
      work=s1.i1
      work=s3.s2.i1
      s3.s2.i1=100
      work=s3.s2.i1
      work=s5.s4.s2.i1
      s5.s4.s2.i1=20
      work=s5.s4.s2.i1
      end
