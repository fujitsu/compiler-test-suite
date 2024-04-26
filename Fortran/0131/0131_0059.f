c
       program   rnrst11
       integer   iw1/3/, iw2/2/, iwa1, iwa2
       iwa1=iw1/iw2
       iwa2=mod(iw1,iw2)
       do 100 i=1,10
         call sub(iwa1/i, mod(iwa1,i), mod(iwa2,i), iwa2/i)
 100   continue
       call okchk
       stop
       end
       subroutine sub(id1, im1, im2, id2)
         common /sum/ isum1, isum2, isum3, isum4
         isum1=isum1+id1
         isum2=isum2+im1
         isum3=isum3+im2
         isum4=isum4+id2
       end
       subroutine okchk
         common /sum/ isum1, isum2, isum3, isum4
         if (isum1.eq.1 .and. isum2.eq.9 .and.
     .       isum3.eq.9 .and. isum4.eq.1      ) then
           write(6,*) '*** ok ***'
         else
           write(6,*) '*** ng ***'
           write(6,*) 'isum1=',isum1
           write(6,*) 'isum2=',isum2
           write(6,*) 'isum3=',isum3
           write(6,*) 'isum4=',isum4
         endif
       end
       block data
         common /sum/ i,j,k,l
         data i/0/
         data j/0/
         data k/0/
         data l/0/
       end
