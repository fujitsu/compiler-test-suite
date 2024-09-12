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
           integer(1) ,pointer :: ptr1(:,:)=>tar1(1:10:2,10:20)
           integer(2) ,pointer :: ptr2(:,:)=>tar2(1:10:2,10:20)
           integer(4) ,pointer :: ptr3(:,:)=>tar3(1:10:2,10:20)
           integer(8) ,pointer :: ptr4(:,:)=>tar4(1:10:2,10:20)
           logical(1) ,pointer :: ptr5(:,:)=>tar5(1:10:2,10:20)
           logical(2) ,pointer :: ptr6(:,:)=>tar6(1:10:2,10:20)
           logical(4) ,pointer :: ptr7(:,:)=>tar7(1:10:2,10:20)
           logical(8) ,pointer :: ptr8(:,:)=>tar8(1:10:2,10:20)
           real   (4) ,pointer :: ptr9(:,:)=>tar9(1:10:2,10:20)
           real   (8) ,pointer :: ptra(:,:)=>tara(1:10:2,10:20)
           real   (16),pointer :: ptrb(:,:)=>tarb(1:10:2,10:20)
           complex(4) ,pointer :: ptrc(:,:)=>tarc(1:10:2,10:20)
           complex(8) ,pointer :: ptrd(:,:)=>tard(1:10:2,10:20)
           complex(16),pointer :: ptre(:,:)=>tare(1:10:2,10:20)
           character  ,pointer :: ptrf(:,:)=>tarf(1:10:2,10:20)
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
ians=ians+1
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
           ppr1=>tar1(1:10:2,10:20)
           ppr2=>tar2(1:10:2,10:20)
           ppr3=>tar3(1:10:2,10:20)
           ppr4=>tar4(1:10:2,10:20)
           ppr5=>tar5(1:10:2,10:20)
           ppr6=>tar6(1:10:2,10:20)
           ppr7=>tar7(1:10:2,10:20)
           ppr8=>tar8(1:10:2,10:20)
           ppr9=>tar9(1:10:2,10:20)
           ppra=>tara(1:10:2,10:20)
           pprb=>tarb(1:10:2,10:20)
           pprc=>tarc(1:10:2,10:20)
           pprd=>tard(1:10:2,10:20)
           ppre=>tare(1:10:2,10:20)
           pprf=>tarf(1:10:2,10:20)
         do i=1,5
          do j=1,11
           if (ppr1(i,j).ne.ptr1(i,j)) print *,'err'
           if (ppr2(i,j).ne.ptr2(i,j)) print *,'err'
           if (ppr3(i,j).ne.ptr3(i,j)) print *,'err'
           if (ppr4(i,j).ne.ptr4(i,j)) print *,'err'
           if (ppr5(i,j).neqv.ptr5(i,j)) print *,'err'
           if (ppr6(i,j).neqv.ptr6(i,j)) print *,'err'
           if (ppr7(i,j).neqv.ptr7(i,j)) print *,'err'
           if (ppr8(i,j).neqv.ptr8(i,j)) print *,'err'
           if (ppr9(i,j).ne.ptr9(i,j)) print *,'err'
           if (ppra(i,j).ne.ptra(i,j)) print *,'err'
           if (pprb(i,j).ne.ptrb(i,j)) print *,'err'
           if (pprc(i,j).ne.ptrc(i,j)) print *,'err'
           if (pprd(i,j).ne.ptrd(i,j)) print *,'err'
           if (ppre(i,j).ne.ptre(i,j)) print *,'err'
           if (pprf(i,j).ne.ptrf(i,j)) print *,'err'
end do
enddo
         end 
