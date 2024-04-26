      program main
      call i1_test
      print *,' TEST passed '
      end
      subroutine i1_test
      implicit none
      integer*1     i,id(2)
      integer*1     i1,i1_save,i1_data,i1_common,i1_equ,i1_sub
      save             i1_save
      data                     i1_data/1/
      common        /c1/               i1_common
      equivalence  (i                           ,i1_equ)
      pointer      (p,                                  i1_sub)
      integer*1     i1d(2),i1d_save(2),i1d_data(2),i1d_common(2)
      integer*1     i1d_equ(2),i1d_sub(2),i1d_alloc
      allocatable                                     i1d_alloc(:)
      save             i1d_save
      data                     i1d_data/1,1/
      common        /c1d/               i1d_common
      equivalence  (id                           ,i1d_equ)
      pointer      (pd,                                  i1d_sub)

      allocate( i1d_alloc(2) ) 
      i1 = 1      ; i1d(1)=1        ; i1d(2)=1
      i1_save=1   ; i1d_save(1)=1   ; i1d_save(2)=1
      i1_data=1   ; i1d_data(1)=1   ; i1d_data(2)=1
      i1_common=1 ; i1d_common(1)=1 ; i1d_common(2)=1
      i1_equ=1    ; i1d_equ(1)=1    ; i1d_equ(2)=1
      p = loc( i ); pd = loc( id )
      i=1         ; id(1)=1         ; id(2)=1
                    i1d_alloc(1)=1  ; i1d_alloc(2)=1

      call inc( i1 )
      call inc( i1_save )
      call inc( i1_data )
      call inc( i1_common )
      call inc( i1_equ )
      call inc( i1_sub )
      i=i+1
      id=id+1
      call inc( i1d(1) )
      call inc( i1d_save(1) )
      call inc( i1d_data(1) )
      call inc( i1d_common(1) )
      call inc( i1d_equ(1) )
      call inc( i1d_sub(1) )
      call inc( i1d_alloc(1) )
      i=i+1
      id=id+1
      call inc( i1d )
      call inc( i1d_save )
      call inc( i1d_data )
      call inc( i1d_common )
      call inc( i1d_equ )
      call inc( i1d_sub )
      call inc( i1d_alloc )
      if( i1 /= 2 )               print *,' NG test 1-1 '
      if( i1_save /= 2 )          print *,' NG test 1-2 '
      if( i1_data /= 2 )          print *,' NG test 1-3 '
      if( i1_common /= 2 )        print *,' NG test 1-4 '
      if( i1_equ /= 5 )           print *,' NG test 1-5 '
      if( i1_sub /= 5 )           print *,' NG test 1-6 '
      if( i1d(1) /= 3 )               print *,' NG test 1-7 '
      if( i1d_save(1) /= 3 )          print *,' NG test 1-8 '
      if( i1d_data(1) /= 3 )          print *,' NG test 1-9 '
      if( i1d_common(1) /= 3 )        print *,' NG test 1-a '
      if( i1d_equ(1) /= 7 )           print *,' NG test 1-b '
      if( i1d_sub(1) /= 7 )           print *,' NG test 1-c '
      if( i1d_alloc(1) /= 3 )         print *,' NG test 1-d '
      end
      subroutine inc( i ) 
      integer*1 i
      i=i+1
      end
