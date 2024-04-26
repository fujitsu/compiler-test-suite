      integer  (kind=4)::i04a(10,10,10),i04b(10,10,10),i04c(10,10,10)
      integer  (kind=4)::i04d(10,10,10),i04e(10,10,10),i04f(10,10,10)
      integer  (kind=4)::i04g(10,10,10),i04h(10,10,10),i04i(10,10,10)
      character(len=5) ::res='ok   '
      i04a=0
      i04b=1
      i04c=2
      i04d=3
      i04e=4
      i04f=5
      i04g=6
      i04h=7
      i04i=8
      i04a=i04a+1
      i04b=i04b+i04a
      i04c=i04c+i04b
      i04d=i04d+i04c
      i04e=i04e+i04d
      i04f=i04f+i04e
      i04g=i04g+i04f
      i04h=i04h+i04g
      i04i=i04i+i04h
      do k=1,10
         do j=1,10
            do i=1,10
               if(i04i(i,j,k)/=37) res='ng ??'
            enddo
         enddo
      enddo
      write(6,*) res
      stop
      end
      

