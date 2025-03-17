       structure /str11/
	  integer*1 i1
	  integer*4 i4
       end structure
       structure /str1/
	  real*8 r(2)
	  record /str11/ str1a(2)
	  structure str2v
	     integer*1 i21
	     integer*4 i24
          end structure
       end structure

       record /str1/ str2v

       str2v%r(1)=1
       str2v%r(2)=2
       str2v%str2v%i21 =3
       str2v%str2v%i24 =4
       str2v%str1a(1).i1 = 5
       str2v%str1a(1).i4 = 6
       str2v%str1a(2).i1 = 7
       str2v%str1a(2).i4 = 8
       print *,str2v%r(1)
       print *,str2v%r(2)
       print *,str2v%str2v%i21
       print *,str2v%str2v%i24
       print *,str2v%str1a(1).i1
       print *,str2v%str1a(1).i4
       print *,str2v%str1a(2).i1
       print *,str2v%str1a(2).i4
       end
