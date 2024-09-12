      implicit   real*8(d),logical*4(l)
      dimension  da10(20,20),da20(20,20),da30(20,20),da40(20,20),
     *           db10(20,20,20),db20(20,20,20),db30(20,20,20)
      dimension  la10(20,20),la20(20,20),dc10(20),dc20(20),
     *           ld10(20,20,20),ld20(20,20,20)
      data     da10/400*1.0d0/,da20/400*2.0d0/,da30/400*3.0d0/
      data     da40/400*2.0d0/,db10/8000*1.0d0/,db20/8000*2.0d0/
      data     db30/8000*4.0d0/
      data     dc10/20*0.0d0/,dc20/20*0.0d0/
      data     la10/400*.false./,la20/400*.false./
      data     ld10/8000*.false./,ld20/8000*.false./
      it1 = 2
      it2 = 10
      do 10 i=1,10
        da10(1,i) = da20(i,i) + da30(it1,i)
        da30(1,i) = da40(10,i) - da20(i,i)
          do 10 j=i+10,20
            da20(i,j) = db30(i,j,it2) * da10(it2,j)
            da40(i,j) = db20(i,j,j) / 2.0d0 + da20(i,j-1)
            if ( da10(j,i) .gt. da30(j,i) ) then
              la10(i,j) = .true.
            endif
 10   continue
      write(6,*) ' (da10) ',(da10(1,k),k=1,10)
      write(6,*) ' (da30) ',(da30(1,k),k=1,10)
      write(6,*) ' (da20) ',((da20(i,j),i=1,10),j=11,20)
      write(6,*) ' (da40) ',((da40(i,j),i=1,10),j=11,20)
      write(6,*) ' (la10) ',((la10(i,j),i=1,10),j=11,20)
      it1 = 1
      it2 = 2
      do 20 i=it2,15
        do 30 j=i,15
          if ( da20(i,j) .lt. da40(i,j) ) then
            la20(j,i) = .true.
          endif
          da20(i,j) = da40(i,j) + da10(i,j)
          db30(i,j,it2) = db30(i,j,it1) * da30(i,j)
          da10(it1,j) = da20(i,j-it1) - da40(i,j+1)
 30     continue
        dc10(i) = dc20(i) + da20(15,i) - da20(it2,i)
        dc20(1) = dc20(1) + db30(i,it2,it1)
 20   continue
      write(6,*) ' (dc10) ',(dc10(k),k=1,15)
      write(6,*) ' (dc20) ', dc20(1)
      write(6,*)   (da10(1,k),k=1,15)
      write(6,*) ' (da20) ',((da20(i,j),i=1,15),j=1,15)
      write(6,*) ' (db30) ',((db30(i,j,2),i=1,15),j=1,15)
      write(6,*) ' (la20) ',((la20(i,j),i=1,15),j=1,15)
      do 40 i=1,15
        dc20(i) = dc20(i) + dc10(i) - da10(i,20)
        do 50 j=2,i
          da20(i,j) = da30(i,j) + da10(j,i)
          da10(j+1,i) = da40(i+1,j+1) - da30(i,j)
           do 60 k=2,10,2
             db10(i,j,k) = db20(i,j,k) + db30(i,j,k)
             db20(i,j+1,k-1) = db10(i,j,k+1) * 2.0d0 - da30(i,k)
 60        continue
          da40(i,j) = da10(j,i) + da30(i,j)
          da30(20,i) = da30(20,i) + da40(i,j-1)
 50     continue
        dc10(i) = dc20(i) * 2.0d0
 40   continue
      write(6,*) ' (dc10) ',(dc10(k),k=1,15)
      write(6,*) ' (dc20) ',(dc20(k),k=1,15)
      write(6,*) ' (da10) ',((da10(i,j),i=1,15),j=1,15)
      write(6,*) ' (da20) ',((da20(i,j),i=1,15),j=1,15)
      write(6,*) ' (da30) ',(da30(20,k),k=1,15)
      write(6,*) ' (da40) ',((da40(i,j),i=1,15),j=1,15)
      write(6,*) ' (db10) ',(((db10(i,j,k),i=1,15),j=1,15),k=1,10)
      write(6,*) ' (db20) ',(((db20(i,j,k),i=1,15),j=1,15),k=1,10)
      do 70 i=1,20
       do 70 j=1,20
         if ( la10(i,j) .or. la20(j,i) ) then
           la10(i,j) = .not. la20(j,i)
         endif
         do 70 k=1,20
           if ( db10(i,j,k) .gt. db30(i,j,k) ) then
             ld10(i,j,k) = .not.ld20(i,j,k)
           endif
           if ( db20(i,j,k) .gt. db30(i,j,k) ) then
             ld20(i,j,k) = .not. ld10(i,j,k)
           endif
 70   continue
      write(6,*) '(la10)',la10
      write(6,*) ' (ld10)',ld10
      write(6,*) ' (ld20)',ld20
      stop
      end
