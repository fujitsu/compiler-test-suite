module m1
 integer m11,m12
end module

module m2
 use m1,m21=>m11,m22=>m12
end module

module m3
 integer m31,m32
 common /com/m31,m32
end module

module m4
 integer m41,m42
 common m41,m42
end module

program main

 integer error

 error = 0

 call sub1(error)
 call sub2(error)
 call sub3(error)
 call sub4(error)

 if (error == 0) then
   print *,'*** pass ***'
 else
   print *,'+++ err +++',error
 endif

end program

subroutine sub1(error)
 use m1 ; use m2 ; use m3 ; use m4
 integer error
 common /com/i1,i2
 common      j1,j2

 m11 = 555 ; if (m21 /= 555) error=error+1 
 m12 = 333 ; if (m22 /= 333) error=error+1 
 m31 = 444 ; if (i1  /= 444) error=error+1
 m32 = 666 ; if (i2  /= 666) error=error+1
 m41 = 777 ; if (j1  /= 777) error=error+1
 m42 = 222 ; if (j2  /= 222) error=error+1
end subroutine

subroutine sub2(error)
 integer error
 common /com/i1,i2
 common      j1,j2

 if (i1  /= 444) error=error+1
 if (i2  /= 666) error=error+1
 if (j1  /= 777) error=error+1
 if (j2  /= 222) error=error+1
 i1 = 4444
 i2 = 6666
 j1 = 7777
 j2 = 2222
 call subin(error)
 contains 
  subroutine subin(error)
   integer error
   common /com/i1,i2
   common      j1,j2
   if (i1  /= 4444) error=error+1
   if (i2  /= 6666) error=error+1
   if (j1  /= 7777) error=error+1
   if (j2  /= 2222) error=error+1
  end subroutine
end subroutine

subroutine sub3(error)
 use m3 ; use m4
 integer error

 if (m31 /= 4444) error=error+1
 if (m32 /= 6666) error=error+1
 if (m41 /= 7777) error=error+1
 if (m42 /= 2222) error=error+1

 m31 = 44
 m32 = 66
 m41 = 77
 m42 = 22
 call subin(error)

 contains 
  subroutine subin(error)
   integer error
   common /com/i1,i2
   common      j1,j2

   if (i1  /= 44) error=error+1
   if (i2  /= 66) error=error+1
   if (j1  /= 77) error=error+1
   if (j2  /= 22) error=error+1
  end subroutine
end subroutine

subroutine sub4(error)
 use m1 ; use m2
 integer error

 if (m11 /= 555) error=error+1 
 if (m12 /= 333) error=error+1 
 if (m21 /= 555) error=error+1 
 if (m22 /= 333) error=error+1 

 m11 = 5555
 m12 = 3333

 call subin(error)

 contains 
  subroutine subin(error)
   use m1 ; use m2
   integer error

   if (m11 /= 5555) error=error+1 
   if (m12 /= 3333) error=error+1 
   if (m21 /= 5555) error=error+1 
   if (m22 /= 3333) error=error+1 

  end subroutine
end subroutine
