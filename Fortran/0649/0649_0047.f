         type ty1
           character cha(8)
         end type
         type (ty1) :: str
           character cha(8)
         integer a(8),b(8)
         data a/1,2,3,4,5,6,7,8/
         str%cha(1 ) = '('
         str%cha(2 ) = '1'
         str%cha(3 ) = 'h'
         str%cha(4 ) = ' '
         str%cha(5 ) = ','
         str%cha(6 ) = 'i'
         str%cha(7 ) = '1'
         str%cha(8 ) = ')'
         rewind 24 
         write (24,str%cha) a
         rewind 24
         read (24,*) b
         do i=1,8
           if (b(i).ne.i) call err()
         end do
         rewind 6
         print *,'pass' 
         end
         subroutine err()
         rewind 6
         print *,'err' 
         end
