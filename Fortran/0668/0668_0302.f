      program main
       real a(10),b(10),c(10),d(10),x(10),y(10),z(10),q(10)
       data b/1,2,3,4,5,6,7,8,9,10/
       data c/1,2,3,4,5,6,7,8,9,10/
       data d/1,2,3,4,5,6,7,8,9,10/
       data y/1,2,3,4,5,6,7,8,9,10/
       data z/1,2,3,4,5,6,7,8,9,10/
       data q/1,2,3,4,5,6,7,8,9,10/
       do 10 i=1,10
         x(i)=y(i)*z(i)+q(i)
  10     a(i)=b(i)*c(i)+d(i)
      write(6,*) '***** start *****'
       print *,a,x
      write(6,*) '*****  end  *****'
       stop
       end
