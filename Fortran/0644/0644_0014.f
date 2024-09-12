      structure /str11/
        integer i11
      end structure
      structure /str1/
        real*8 r(2)
        record /str11/ str1a(2)
        structure str2v
          integer i21
        end structure
      end structure

      record /str1/ str2v

      str2v%r(1)=1
      str2v%r(2)=2
      str2v%str2v%i21 =3
      str2v%str1a(1).i11 = 5
      print *,str2v%r(1)
      print *,str2v%r(2)
      print *,str2v%str2v%i21
      print *,str2v%str1a(1).i11
      end
