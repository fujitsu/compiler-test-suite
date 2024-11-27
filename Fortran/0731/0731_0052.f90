        function realloc1char(array,length, lb1,o1,n1, istat)

        implicit none
        logical isalloc

        integer istat,length
        integer i1,i2,i3
        integer lb1,lb2,lb3
        integer ub1,ub2,ub3
        integer n1,n2,n3
        integer o1,o2,o3
        character,pointer ::realloc1char(:)*(length)

        character, pointer::array(:)*(length)
        istat = 0

        allocate( realloc1char(lb1:n1),stat=istat)
        if(istat.gt.0) then
          nullify(realloc1char)
          istat = 1
          return
        endif
        isalloc=associated(array)
        ub1=lb1
        if( isalloc ) then
          do i1=lb1,min(o1,n1)
            realloc1char(i1)=array(i1)
          end do
          ub1=o1+1
        endif
        if(o1.lt.n1.or..not.isalloc) then
          do i1=ub1, n1
            realloc1char(i1)=' '
          end do
        endif
        if( isalloc ) then
          deallocate(array,stat=istat)
          nullify(array)
          if(istat.gt.0) then
            istat = 2
            return
          endif
        endif

        return
        end
print *,'pass'
end

