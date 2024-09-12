call sub1()
print*,"pass" 

end
subroutine sub1()
           integer(1) ,save,target :: tar1(10,20)=1
           integer(2) ,save,target :: tar2(10,20)=1
           integer(4) ,save,target :: tar3(10,20)=1
           integer(8) ,save,target :: tar4(10,20)=1
           logical(1) ,save,target :: tar5(10,20)=.false.
           logical(2) ,save,target :: tar6(10,20)=.false.
           logical(4) ,save,target :: tar7(10,20)=.false.
           logical(8) ,save,target :: tar8(10,20)=.false.
           real   (4) ,save,target :: tar9(10,20)=1.0
           real   (8) ,save,target :: tara(10,20)=2.0
           real   (16),save,target :: tarb(10,20)=3.0
           complex(4 ),save,target :: tarc(10,20)=(1.0,1.0)
           complex(8 ),save,target :: tard(10,20)=(2.0,1.0)
           complex(16),save,target :: tare(10,20)=(3.0,1.0)
           character  ,save,target :: tarf(10,20)='a'
           integer(1) ,pointer :: ptr1(:,:)=>tar1 
           integer(2) ,pointer :: ptr2(:,:)=>tar2 
           integer(4) ,pointer :: ptr3(:,:)=>tar3 
           integer(8) ,pointer :: ptr4(:,:)=>tar4 
           logical(1) ,pointer :: ptr5(:,:)=>tar5 
           logical(2) ,pointer :: ptr6(:,:)=>tar6 
           logical(4) ,pointer :: ptr7(:,:)=>tar7 
           logical(8) ,pointer :: ptr8(:,:)=>tar8 
           real   (4) ,pointer :: ptr9(:,:)=>tar9 
           real   (8) ,pointer :: ptra(:,:)=>tara 
           real   (16),pointer :: ptrb(:,:)=>tarb 
           complex(4) ,pointer :: ptrc(:,:)=>tarc 
           complex(8) ,pointer :: ptrd(:,:)=>tard 
           complex(16),pointer :: ptre(:,:)=>tare 
           character  ,pointer :: ptrf(:,:)=>tarf 
           integer(1) ,pointer :: ppr1(:,:)
           integer(2) ,pointer :: ppr2(:,:)
           integer(4) ,pointer :: ppr3(:,:)
           integer(8) ,pointer :: ppr4(:,:)
           logical(1) ,pointer :: ppr5(:,:)
           logical(2) ,pointer :: ppr6(:,:)
           logical(4) ,pointer :: ppr7(:,:)
           logical(8) ,pointer :: ppr8(:,:)
           real   (4) ,pointer :: ppr9(:,:)
           real   (8) ,pointer :: ppra(:,:)
           real   (16),pointer :: pprb(:,:)
           complex(4) ,pointer :: pprc(:,:)
           complex(8) ,pointer :: pprd(:,:)
           complex(16),pointer :: ppre(:,:)
           character  ,pointer :: pprf(:,:)
ians=0
         do i=1,10
          do j=1,20
           if (ians>127) then
              tar1(i ,j )=1
           else 
              tar1(i ,j )=ians
           endif
           tar2(i ,j )=ians
           tar3(i ,j )=ians
           tar4(i ,j )=ians
           tar5(i ,j )=.false.
           tar6(i ,j )=.false.
           tar7(i ,j )=.false.
           tar8(i ,j )=.false.
           tar9(i ,j )=real(ians)
           tara(i ,j )=real(ians)
           tarb(i ,j )=real(ians)
           tarc(i ,j )=cmplx(real(ians))
           tard(i ,j )=(cmplx(real(ians)))
           tare(i ,j )=(cmplx(real(ians)))
           tarf(i ,j )='a'
end do
enddo
           ppr1=>tar1 
           ppr2=>tar2 
           ppr3=>tar3 
           ppr4=>tar4 
           ppr5=>tar5 
           ppr6=>tar6 
           ppr7=>tar7 
           ppr8=>tar8 
           ppr9=>tar9 
           ppra=>tara
           pprb=>tarb 
           pprc=>tarc 
           pprd=>tard 
           ppre=>tare 
           pprf=>tarf 
         do i=1,10
          do j=1,20
           if (ppr1(i,j).ne.tar1(i,j)) print *,'err'
           if (ppr2(i,j).ne.tar2(i,j)) print *,'err'
           if (ppr3(i,j).ne.tar3(i,j)) print *,'err'
           if (ppr4(i,j).ne.tar4(i,j)) print *,'err'
           if (ppr5(i,j).neqv.tar5(i,j)) print *,'err'
           if (ppr6(i,j).neqv.tar6(i,j)) print *,'err'
           if (ppr7(i,j).neqv.tar7(i,j)) print *,'err'
           if (ppr8(i,j).neqv.tar8(i,j)) print *,'err'
           if (ppr9(i,j).ne.tar9(i,j)) print *,'err'
           if (ppra(i,j).ne.tara(i,j)) print *,'err'
           if (pprb(i,j).ne.tarb(i,j)) print *,'err'
           if (pprc(i,j).ne.tarc(i,j)) print *,'err'
           if (pprd(i,j).ne.tard(i,j)) print *,'err'
           if (ppre(i,j).ne.tare(i,j)) print *,'err'
           if (pprf(i,j).ne.tarf(i,j)) print *,'err'
end do
enddo
         end 
