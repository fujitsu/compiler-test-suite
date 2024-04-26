program main
  type z
     integer,allocatable::za
  end type z
  type (z)::a(2)

  allocate(a(1)%za,a(2)%za)
  a(1)%za=-1
  a(2)%za=-2

  do k=1,2
     if(k .eq. 2) then
        a(1)%za=1
        a(2)%za=2
     end if
  enddo
  if (a(2)%za .ne. 2) then
     write(6,*) "ng"
     print *, a(2)%za
  else
     write(6,*) "ok"
  endif
end program main
