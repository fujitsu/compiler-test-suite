
      program main
      logical*1  F,T,mask(3,3)
      logical    x(3,3)
      type str
        integer *4    a(3,3)/1,2,3,4,5,6,7,8,9/
        real    *4    b(3,3)/9,8,7,6,5,4,3,2,1/
        logical       c(3,3)
      endtype
      type (str) :: h
      integer *4      z(3,3)/0,0,0,0,0,12,14,16,18/,err/0/
      parameter ( F=.false. ,T=.true. )
      data mask/F,T,T,T,F,F,T,T,T/
      data h%c/F,F,F,F,F,F,F,F,F/,x/T,F,F,F,T,T,F,F,F/
      
      do i=1,3
         where ( h%a(i,:) <= int(h%b(i,:)) )
           h%a(i,:) = h%a(i,:) - h%a(i,:)
         elsewhere
           h%a(i,:) = h%a(i,:) + h%a(i,:)
         endwhere
      enddo

      where ( mask )
      elsewhere
        h%c = T
      endwhere

      do l=1,3
         do i=1,3
            if ( z(i,l) /= h%a(i,l) .or. x(i,l) .neqv. h%c(i,l) ) then
               err=1
            end if
         end do
      end do
      if ( err .eq. 0 ) then
         write(6,*)'*** ok !! ***'
      else
         write(6,*)'*** ng ?? ***'
         write(6,*)h
      endif
      stop
      end

