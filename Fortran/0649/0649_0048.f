         type ty1
           character*8 cha(8)
         end type
         type (ty1) :: str
         integer a(8),b(8)
         data a/1,2,3,4,5,6,7,8/
         str%cha = '(1h ,i1)'
         rewind 10 
         write (10,str%cha) a
         rewind 10
         read (10,*) b
         do i=1,8
           if (b(i).ne.i) call err()
         end do
         a=a-1
         rewind 11 
         write (11,str%cha(1)) a
         rewind 11
         read (11,*) b
         do i=1,8
           if (b(i).ne.i-1) call err()
         end do
         a=a+1
         rewind 12 
         write (12,str%cha(5)) a
         rewind 12
         read (12,*) b
         do i=1,8
           if (b(i).ne.i) call err()
         end do
         rewind 13 
         write (13,str%cha(5)) 1
         rewind 13
         read (13,*) ians
         if (ians.ne.1) call err()
         rewind 14 
         write (14,str%cha(1)) 3
         rewind 14
         read (14,*) ians
         if (ians.ne.3) call err()
         rewind 15 
         write (15,str%cha) 2
         rewind 15
         read (15,*) ians
         if (ians.ne.2) call err()
         rewind 6
         print *,'pass' 
         end
         subroutine err()
         rewind 6
         print *,'err' 
         end
