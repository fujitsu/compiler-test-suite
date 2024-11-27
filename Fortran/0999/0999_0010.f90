       equivalence (i,j)
       j=1
       do i=1,10
        j=1
       end do
       end

       subroutine sub01()
       common /con01/ i
       equivalence (i,j)
       j=1
       do i=1,10
        j=1
       end do
       end

       subroutine sub02()
       common /con02/ j
       equivalence (i,j)
       j=1
       do i=1,10
        j=1
       end do
       end

       subroutine nsub01()
       common /ncon01/ i
       equivalence (i,j)
       common /ncon011/ ii
       equivalence (ii,jj)
       equivalence (i,j)
       j=1
       do i=1,10
        jj=1
       end do
       end

       subroutine nsub00()
       equivalence (ii,jj)
       equivalence (i,j)
       j=1
       do i=1,10
        jj=1
       end do
       end
       subroutine nsub0a()
       equivalence (ii,jj)
       equivalence (i,j)
       j=1
       do ii=1,10
        j=1
       end do
       end

       subroutine nsub02()
       common /ncon02/ j
       equivalence (i,j)
       common /ncon022/ jj
       equivalence (ii,jj)
       equivalence (i,j)
       j=1
       do i=1,10
        jj=1
       end do
       end

       subroutine nsub03()
       common /ncon03/ i
       equivalence (i,j)
       common /ncon031/ ii
       equivalence (ii,jj)
       equivalence (i,j)
       j=1
       do ii=1,10
        j=1
       end do
       end

       subroutine nsub04()
       common /ncon04/ j
       equivalence (i,j)
       common /ncon042/ jj
       equivalence (ii,jj)
       equivalence (i,j)
       j=1
       do ii=1,10
        j=1
       end do
       end
