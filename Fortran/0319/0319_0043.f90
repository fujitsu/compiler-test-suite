interface 
   subroutine sub1(x,y)
    character*16 a
    character b(16)
    character*(*) x
    character y(16)
    integer i,j(16)
   end subroutine
end interface
character*16 a
character b(16)
a='(6Htest5-,i2,a3)'
do i=1,16
  b(i)=a(i:i)
end do
b(8)='6'
call sub1(a,b)
end

subroutine sub1(x,y)
 character*16 a
 character b(16)
 character*(*) x
 character y(16)
 integer i,j(16)
 j=(/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/)
 a='(6Htest1-,i2,a3)'
 do i=1,16
   b(i)=a(i:i)
 end do
 b(8)='2'
 write (6,a) 11,' ok'
 write (6,b) 12,' ok'
 b(8)='3'
 write (6,b(1:16:1)) 13,' ok'
 b(8)='4'
 write (6,b(j)) 14,' ok'
 write (6,x) 15,' ok'
 write (6,y) 16,' ok'
 a(8:8)='7'
 write (6,a(1:16)) 17,' ok'
 write (6,a(1:7)//'8'//a(9:16)) 18,' ok'
end subroutine
