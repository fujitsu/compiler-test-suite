 call s1
 print *,'pass'
 end
 subroutine s1
 implicit type(x)(z)
 type x
   character*1 ::y='x'
 end type
 dimension z2(2),z3(2)
  do i=1,3
    call ss1(2,z2,z3)
    call ss2(2,z2,z3)
    call chk
  end do
 end
 subroutine ss1(i,z2,z3)
 implicit type(x)(z)
 type x
   character*1 ::y='x'
 end type
 dimension z1(2),z2(i),z3(i),z4(i)
 intent(out)::z2,z3

 namelist /name1/ z1
 namelist /name2/ z2
 end 
 subroutine ss2(i,z2,z3)
 implicit type(x)(z)
 type x
   character*1 ::y='x'
 end type
 dimension z1(2),z2(i),z3(i),z4(i)
 intent(out)::z2,z3

 namelist /name1/ z1
 namelist /name2/ z2
 open (1,delim='quote')
 open (2,delim='quote')
 write(1,name1) 
 write(1,name2) 
 write(2,*) z3
 write(2,*) z4
 end 
 subroutine chk
 namelist /name1/ z1
 namelist /name2/ z2
 type x
   character*1 ::y
 end type
 type(x):: z1(2),z2(2),z3(2),z4(2)
 rewind 1
 rewind 2
 read (1,name1)
 read (1,name2)
 if (any(z1%y/='x')) write(6,*) "NG"
 if (any(z2%y/='x')) write(6,*) "NG"
 read(2,*) z3
 if (any(z3%y/='x'))write(6,*) "NG"
 read(2,*) z4
 if (any(z4%y/='x')) write(6,*) "NG"
 rewind 1
 rewind 2
 end


 
