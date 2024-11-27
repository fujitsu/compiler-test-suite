call test01()
print *,'pass'
end

subroutine test01()
integer,dimension(10,10) :: i01=1
integer,dimension(10) :: i02=1
integer,dimension(0) :: i03=1
integer,dimension(-10) :: i04=1
integer,dimension(0,10) :: i05=1
integer,dimension(10,0) :: i06=1
integer,dimension(:,:),pointer :: i07=>null()
integer,dimension(:),pointer :: i08=>null()
i01=i01 ; i02=i02 ; i03=i03 ; i04=i04 ; i05=i05 ;
i06=i06 ; i07=>i07 ; i08=>i08 ; 
end

subroutine test02()
integer,dimension(10,10) :: i01=reshape((/(i,i=1,100)/),(/10,10/))
integer,dimension(10) :: i02=(/(i,i=1,10)/)
integer,dimension(0) :: i03=(/(i,i=1000,100)/)
integer,dimension(-10) :: i04=(/(i,i=1000,100)/)
integer,dimension(0,10)::i05=reshape((/(i,i=10,100)/),(/0,10/))
integer,dimension(10,0)::i06=reshape((/(i,i=1,100)/),(/10,0/))
integer,dimension(:,:),pointer :: i07=>null()
integer,dimension(:),pointer :: i08=>null()
i01=i01 ; i02=i02 ; i03=i03 ; i04=i04 ; i05=i05 ;
i06=i06 ; i07=i07 ; i08=i08 ;
end
