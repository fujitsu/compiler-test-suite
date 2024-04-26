subroutine test01()
integer ,target  :: ita(10,20)=reshape((/(i,i=1,200)/),(/10,20/))
integer ,pointer :: ipa(:,:)=>ita(1:10:1,2:20:2)
integer ,pointer :: ipb(:,:)
ipb=>ita(1:10:1,2:20:2)
do i=1,10,1
 do j=1,10
   if (ipa(i,j).ne.ipb(i,j)) print *,'err1'
 end do
enddo
end

subroutine test02()
integer ,target  :: ita(10,20)=reshape((/(i,i=1,200)/),(/10,20/))
integer ,pointer :: ipa(:,:)=>ita(1:10:3,2:20:1)
integer ,pointer :: ipb(:,:)
ipb=>ita(1:10:3,2:20:1)
do i=1,4
 do j=1,19
   if (ipa(i,j).ne.ipb(i,j)) print *,'err1'
 end do
enddo
end

subroutine test03()
integer ,target  :: ita(10,20)=reshape((/(i,i=1,200)/),(/10,20/))
integer ,pointer :: ipa(:,:)=>ita(1:10:3,2:20:4)
integer ,pointer :: ipb(:,:)
ipb=>ita(1:10:3,2:20:4)
do i=1,4 
 do j=1,5
   if (ipa(i,j).ne.ipb(i,j)) print *,'err1'
 end do
enddo
end
subroutine test04()
integer ,target  :: ita(10,20)=reshape((/(i,i=1,200)/),(/10,20/))
integer ,pointer :: ipa(:,:)=>ita(3:10:2,2:10:2)
integer ,pointer :: ipb(:,:)
ipb=>ita(3:10:2,2:10:2)
do i=1,4 
 do j=1,5
   if (ipa(i,j).ne.ipb(i,j)) print *,'err1'
 end do
enddo
end

call test01()
call test02()
call test03()
call test04()
print *,'pass'
end
