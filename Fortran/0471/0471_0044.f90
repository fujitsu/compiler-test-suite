call sub1()
print*,"pass" 

end
subroutine sub1()
type ty1
           integer(1)              :: tar1(10,20)=1
           integer(2)              :: tar2(10,20)=1
           integer(4)              :: tar3(10,20)=1
           integer(8)              :: tar4(10,20)=1
           logical(1)              :: tar5(10,20)=.false.
           logical(2)              :: tar6(10,20)=.false.
           logical(4)              :: tar7(10,20)=.false.
           logical(8)              :: tar8(10,20)=.false.
           real   (4)              :: tar9(10,20)=1.0
           real   (8)              :: tara(10,20)=2.0
           real   (16)             :: tarb(10,20)=3.0
           complex(4 )             :: tarc(10,20)=(1.0,1.0)
           complex(8 )             :: tard(10,20)=(2.0,1.0)
           complex(16)             :: tare(10,20)=(3.0,1.0)
           character               :: tarf(10,20)='a'
end type
type (ty1),save,target ::sss
           integer(1) ,pointer :: ptr1(:,:)=>sss%tar1(1:10:2,10:20)
           integer(2) ,pointer :: ptr2(:,:)=>sss%tar2(1:10:2,10:20)
           integer(4) ,pointer :: ptr3(:,:)=>sss%tar3(1:10:2,10:20)
           integer(8) ,pointer :: ptr4(:,:)=>sss%tar4(1:10:2,10:20)
           logical(1) ,pointer :: ptr5(:,:)=>sss%tar5(1:10:2,10:20)
           logical(2) ,pointer :: ptr6(:,:)=>sss%tar6(1:10:2,10:20)
           logical(4) ,pointer :: ptr7(:,:)=>sss%tar7(1:10:2,10:20)
           logical(8) ,pointer :: ptr8(:,:)=>sss%tar8(1:10:2,10:20)
           real   (4) ,pointer :: ptr9(:,:)=>sss%tar9(1:10:2,10:20)
           real   (8) ,pointer :: ptra(:,:)=>sss%tara(1:10:2,10:20)
           real   (16),pointer :: ptrb(:,:)=>sss%tarb(1:10:2,10:20)
           complex(4) ,pointer :: ptrc(:,:)=>sss%tarc(1:10:2,10:20)
           complex(8) ,pointer :: ptrd(:,:)=>sss%tard(1:10:2,10:20)
           complex(16),pointer :: ptre(:,:)=>sss%tare(1:10:2,10:20)
           character  ,pointer :: ptrf(:,:)=>sss%tarf(1:10:2,10:20)
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
           sss%tar1(i ,j )=1
else
           sss%tar1(i ,j )=ians
endif
           sss%tar2(i ,j )=ians
           sss%tar3(i ,j )=ians
           sss%tar4(i ,j )=ians
           sss%tar5(i ,j )=.false.
           sss%tar6(i ,j )=.false.
           sss%tar7(i ,j )=.false.
           sss%tar8(i ,j )=.false.
           sss%tar9(i ,j )=real(ians)
           sss%tara(i ,j )=real(ians)
           sss%tarb(i ,j )=real(ians)
           sss%tarc(i ,j )=cmplx(real(ians))
           sss%tard(i ,j )=(cmplx(real(ians)))
           sss%tare(i ,j )=(cmplx(real(ians)))
           sss%tarf(i ,j )='a'
end do
enddo
           ppr1=>sss%tar1(1:10:2,10:20)
           ppr2=>sss%tar2(1:10:2,10:20)
           ppr3=>sss%tar3(1:10:2,10:20)
           ppr4=>sss%tar4(1:10:2,10:20)
           ppr5=>sss%tar5(1:10:2,10:20)
           ppr6=>sss%tar6(1:10:2,10:20)
           ppr7=>sss%tar7(1:10:2,10:20)
           ppr8=>sss%tar8(1:10:2,10:20)
           ppr9=>sss%tar9(1:10:2,10:20)
           ppra=>sss%tara(1:10:2,10:20)
           pprb=>sss%tarb(1:10:2,10:20)
           pprc=>sss%tarc(1:10:2,10:20)
           pprd=>sss%tard(1:10:2,10:20)
           ppre=>sss%tare(1:10:2,10:20)
           pprf=>sss%tarf(1:10:2,10:20)
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