 call s1
 print *,'pass'
 end
 subroutine s1
  call x01
  call x02
  call x03
  call y01
  call y02
  call y03
 end 
subroutine x01
      character*(*),parameter::c1='1234'
      integer,parameter::i=len(c1)
      character (len= len( (/ c1 , c1 /) ) ) :: c_v=c1
      call       x011(c1,c_v,i,len(c1))
 end           
      subroutine x011(c1,c_v,i,j)
      character*(j) c1
      character (len= len( (/ c1 , c1 /) ) ) :: c_v
    end 
subroutine x02
      character*(*),parameter::c1='1234'
      integer,parameter::i=len(c1)
      character (len= len( (/ c1 , c1 /) ) ) :: c_v=c1
      call       x012(c1,c_v,i,len(c1))
      call       x013(c1,c_v,i,len(c1))
 end           
      subroutine x012(c1,c_v,i,j)
      entry      x013(c1,c_v,i,j)
      character*(j) c1
      character (len= len( (/ c1 , c1 /) ) ) :: c_v
    end 
subroutine x03
      character*(*),parameter::c1='1234'
      integer,parameter::i=len(c1)
      character (len= len( (/ c1 , c1 /) ) ) :: c_v=c1
      call       x014(c1,c_v,i,len(c1))
      call       x015(c1,c_v,i,len(c1))
      call       x016(c1,c_v,i,len(c1))
 end           
      subroutine x014(c1,c_v,i,j)
      entry      x015(c1,c_v,i,j)
      entry      x016(c1,c_v,i,j)
      character*(j) c1
      character (len= len( (/ c1 , c1 /) ) ) :: c_v
    end 
recursive subroutine y01
      character*(*),parameter::c1='1234'
      integer,parameter::i=len(c1)
      character (len= len( (/ c1 , c1 /) ) ) :: c_v=c1
      call       y011(c1,c_v,i,len(c1))
 end           
      recursive subroutine y011(c1,c_v,i,j)
      character*(j) c1
      character (len= len( (/ c1 , c1 /) ) ) :: c_v
    end 
recursive subroutine y02
      character*(*),parameter::c1='1234'
      integer,parameter::i=len(c1)
      character (len= len( (/ c1 , c1 /) ) ) :: c_v=c1
      call       y012(c1,c_v,i,len(c1))
      call       y013(c1,c_v,i,len(c1))
 end           
      recursive subroutine y012(c1,c_v,i,j)
      entry      y013(c1,c_v,i,j)
      character*(j) c1
      character (len= len( (/ c1 , c1 /) ) ) :: c_v
    end 
recursive subroutine y03
      character*(*),parameter::c1='1234'
      integer,parameter::i=len(c1)
      character (len= len( (/ c1 , c1 /) ) ) :: c_v=c1
      call       y014(c1,c_v,i,len(c1))
      call       y015(c1,c_v,i,len(c1))
      call       y016(c1,c_v,i,len(c1))
 end           
      recursive subroutine y014(c1,c_v,i,j)
      entry      y015(c1,c_v,i,j)
      entry      y016(c1,c_v,i,j)
      character*(j) c1
      character (len= len( (/ c1 , c1 /) ) ) :: c_v
    end 
