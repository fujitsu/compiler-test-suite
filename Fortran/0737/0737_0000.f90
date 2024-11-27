call s1
print *,'pass'
end
module my
character(len=*,kind=1),parameter,dimension(2,2):: target_value=reshape((/'1','2','3','4'/),(/2,2/))
character(kind=1,len=1),allocatable,dimension(:,:)::z
contains
subroutine ss
call         m0_ac(1)
call m0_achk(z       )
call         m1_ac(1)
call m1_achk(z       )
call         m1_ac(1)
call m0_bchk(z       )
call         m1_ac(1)
call m1_bchk(z       )
call         n0_ac(1)
call n0_achk(z       )
call         n1_ac(1)
call n1_achk(z       )
call         n1_ac(1)
call n0_bchk(z       )
call         n1_ac(1)
call n1_bchk(z       )
call           k0_ac(i=1)
call k0_achk(p=z         )
call k1_achk(p=z         )
call k0_bchk(q=z         )
call k1_bchk(q=z         )
deallocate(z)
call           t0_ac(i=1)
deallocate(z)
call           t1_ac(i=1)
call t0_achk(p=z         ,q=z         )
call t1_achk(p=z         ,q=z         )
call t0_bchk(q=z         ,p=z         )
call t1_bchk(q=z         ,p=z         )
deallocate(z)
call           y1_ac(i=1)
deallocate(z)
call           y0_ac(i=1)
call y0_achk(p=z         ,q=z         )
call y1_achk(p=z         ,q=z         )
call y0_bchk(q=z         ,p=z         )
call y1_bchk(q=z         ,p=z         )
end subroutine
!
subroutine y0_achk(c1,c2,p,q) 
 character(kind=1,len=*),allocatable,optional,dimension(:,:)::p
 character(kind=1,len=*),target,optional,dimension(:,:)::q
 complex      ,optional::c1,c2,c3,c4
 if (present(c2))write(6,*) "NG"
 entry   y1_achk(q,c1,p)
 if (present(c1))write(6,*) "NG"
 if (.not.present(p))write(6,*) "NG"     ; if (len(p)/=1)write(6,*) "NG"
 if (.not.present(q))write(6,*) "NG"     ; if (len(q)/=1)write(6,*) "NG"
 if (any(p/=target_value))write(6,*) "NG"
 if (any(q/=target_value))write(6,*) "NG"
 return      
 entry   y0_bchk(c1,c2,c3,c4,q,p) 
 if (present(c1))write(6,*) "NG"
 if (present(c2))write(6,*) "NG"
 if (present(c3))write(6,*) "NG"
 if (present(c4))write(6,*) "NG"
 entry   y1_bchk(p,q) 
 if (.not.present(q))write(6,*) "NG"     ; if (len(q)/=1)write(6,*) "NG"
 if (.not.present(p))write(6,*) "NG"     ; if (len(p)/=1)write(6,*) "NG"
 if (any(p/=target_value))write(6,*) "NG"
 if (any(q/=target_value))write(6,*) "NG"
 return        
 entry     y0_ac(c1,c2,i,c3) 
 if (present(c1))write(6,*) "NG"
 if (present(c2))write(6,*) "NG"
 entry   y1_ac(c3,i)
 if (present(c3))write(6,*) "NG"
 allocate (z(-2:-1,0:i))
 z=target_value
 return          
!
 entry     t0_achk(c1,c2,p,q) 
 if (present(c2))write(6,*) "NG"
 entry   t1_achk(q,c1,p) 
 if (present(c1))write(6,*) "NG"
 if (.not.present(p))write(6,*) "NG"     ; if (len(p)/=1)write(6,*) "NG"
 if (.not.present(q))write(6,*) "NG"     ; if (len(q)/=1)write(6,*) "NG"
 if (any(p/=target_value))write(6,*) "NG"
 if (any(q/=target_value))write(6,*) "NG"
 return      
 entry   t0_bchk(c1,c2,c3,c4,q,p)
 if (present(c1))write(6,*) "NG"
 if (present(c2))write(6,*) "NG"
 if (present(c3))write(6,*) "NG"
 if (present(c4))write(6,*) "NG"
 entry   t1_bchk(p,q)
 if (.not.present(q))write(6,*) "NG"     ; if (len(q)/=1)write(6,*) "NG"
 if (.not.present(p))write(6,*) "NG"     ; if (len(p)/=1)write(6,*) "NG"
 if (any(p/=target_value))write(6,*) "NG"
 if (any(q/=target_value))write(6,*) "NG"
 return 
 entry t0_ac(c1,c2,i,c3)
 if (present(c1))write(6,*) "NG"
 if (present(c2))write(6,*) "NG"
 entry   t1_ac(c3,i) 
 if (present(c3))write(6,*) "NG"
 allocate (z(-2:-1,0:i))
 z=target_value
 return
!
entry      k0_achk(c1,c2,p) 
 if (present(c2))write(6,*) "NG"
 entry   k1_achk(c1,p) 
 if (present(c1))write(6,*) "NG"
 if (.not.present(p))write(6,*) "NG"     ; if (len(p)/=1)write(6,*) "NG"
 if (any(p/=target_value))write(6,*) "NG"
 return      
 entry   k0_bchk(c1,c2,c3,c4,q) 
 if (present(c1))write(6,*) "NG"
 if (present(c2))write(6,*) "NG"
 if (present(c3))write(6,*) "NG"
 if (present(c4))write(6,*) "NG"
 entry   k1_bchk(q) 
 if (.not.present(q))write(6,*) "NG";      if (len(q)/=1)write(6,*) "NG"
 if (any(q/=target_value))write(6,*) "NG"
 return
entry      k0_ac(c1,c2,i) 
 if (present(c1))write(6,*) "NG"
 if (present(c2))write(6,*) "NG"
 entry   k1_ac(i) 
 allocate (z(-2:-1,0:i))
 z=target_value
 return
!
 entry     n0_achk(p)
 entry   n1_achk(p)
 if (.not.present(p))write(6,*) "NG"     ; if (len(p)/=1)write(6,*) "NG"
 if (any(p/=target_value))write(6,*) "NG"
 deallocate(p)
 return      
 entry   n0_bchk(q)
 entry   n1_bchk(q) 
 if (.not.present(q))write(6,*) "NG";      if (len(q)/=1)write(6,*) "NG"
 if (any(q/=target_value))write(6,*) "NG"
deallocate(z)
 return 
entry      n0_ac(i)
 entry   n1_ac(i) 
 allocate (z(-2:-1,0:i))
 z=target_value
 return
!
entry      m0_achk(p)
 entry   m1_achk(p)
 if (.not.present(p))write(6,*) "NG"     ; if (len(p)/=1)write(6,*) "NG"
 if (any(p/=target_value))write(6,*) "NG"
 deallocate(p)
 return        
 entry     m0_bchk(p) 
 entry   m1_bchk(p)
 if (.not.present(p))write(6,*) "NG"     ; if (len(p)/=1)write(6,*) "NG"
 if (any(p/=target_value))write(6,*) "NG"
 deallocate(p)
 return 
 entry     m0_ac(i)
 entry   m1_ac(i) 
 allocate (z(-2:-1,0:i))
 z=target_value
end subroutine
end module
subroutine s1
use my,only:ss
call ss
end 
