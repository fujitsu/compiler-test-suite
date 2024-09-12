          integer,parameter::ll1=2
          integer,parameter::ll2=4
          call s1(2)
          call s1(4)
          if(fun(10).ne.30)print*,"101"
          print*,"PASS"
         contains
         subroutine s1(d1)
         integer :: d1
         integer::p
           character(len=4),target,save :: trg
           character(len=3),target,save :: trg2
           character(len=:),pointer :: cptr => trg
           character(len=4),pointer :: cptr2 =>trg
           character(len=4,kind=1),pointer :: cptr3 =>trg
           character(len=4,kind=1),pointer :: cptr4 =>trg
           character(len=ll1+1),pointer :: cptr5 =>trg2
           character(len=ll2),pointer :: cptr6 =>trg
         type ty
         character(len=:),pointer :: cptr => trg
         character(len=4),pointer :: cptr2 =>trg
         character(len=4,kind=1),pointer :: cptr3 =>trg
         character(len=4,kind=1),pointer :: cptr4 =>trg
         character(len=ll1+1),pointer :: cptr5 =>trg2
         end type
         type(ty)::obj
         if(len(cptr).ne.4)print*,"101"
         if(len(cptr3).ne.4)print*,"101"
         if(len(cptr3).ne.4)print*,"101"
         if(len(cptr4).ne.4)print*,"101"
         if(len(cptr5).ne.3)print*,"101"
         if(len(obj%cptr).ne.4)print*,"101"
         if(len(obj%cptr3).ne.4)print*,"101"
         if(len(obj%cptr3).ne.4)print*,"101"
         if(len(obj%cptr4).ne.4)print*,"101"
         if(len(obj%cptr5).ne.3)print*,"101"
        end
         function fun(x) result(y)
         integer::x
         integer::y
         character(len=4,kind=1),target,save :: trg
         character(len=:),pointer :: cptr => trg
         character(len=:,kind=1),pointer :: cptr2 => trg
         character(len=ll2),pointer :: cptr3 => trg
         character(len=ll1+2),pointer :: cptr4 => trg
         if(len(cptr).ne.4)print*,"101"
         if(len(cptr3).ne.4)print*,"101"
         if(len(cptr3).ne.4)print*,"101"
         if(len(cptr4).ne.4)print*,"101"
         y =30 
         end function
        
        end

