      subroutine sub_auto_obj_chl(so,sw)
      character(len=*)       :: so,sw
      character(len=len(so)) :: tmp
      tmp=so
      so=sw
      sw=tmp
      return 
      end
      subroutine sub_auto_obj_che(so,sw)
      character(len=10),dimension(:)             :: so,sw
      character(len=10),dimension(size(so)) :: tmp
      tmp=so
      so=sw
      sw=tmp
      return 
      end
      subroutine aem_sub_auto_obj(so,sw)
      integer,dimension(:)     :: so,sw
      integer,dimension(size(so)):: tmp
      tmp=so
      so=sw
      sw=tmp
      return 
      end
      character(len=10)               :: som,  swm
      character(len=10),dimension(10) :: soma, swma
      integer,dimension(10)           :: somi, swmi
      interface 
        subroutine aem_sub_auto_obj(s,w)
        integer,dimension(:):: s,w
        end subroutine 
        subroutine sub_auto_obj_che(s,w)
        character(len=10),dimension(:):: s,w        
        end subroutine 
      end interface 
      data soma/10*'abcdefghij'/,swma/10*'jihgfedcba'/
      som='abcdefghij'
      swm='jihgfedcba'
      somi=(/ (i,i=1,10,1) /)
      swmi=(/ (i,i=2,20,2) /)
      print *,'Before som => ',som,' swm => ',swm
      call sub_auto_obj_chl(som,swm)
      print *,'After  som => ',som,' swm => ',swm
      print *,'Before soma(5) => ',soma(5),' swma(5) => ',swma(5)
      call sub_auto_obj_che(soma,swma)
      print *,'After  soma(5) => ',soma(5),' swma(5) => ',swma(5)
      print *,'Before somi => ',somi,'      swmi => ',swmi
      call aem_sub_auto_obj(somi,swmi)
      print *,'After  somi => ',somi,' swmi => ',swmi
      stop
      end

