      subroutine frtime(mode,iside,alf1,alf2,sc1,sc2,tfr,tsc,frqsc,ierr)
        integer mode
        real alf1
        real alf2
        real sc1
        real sc2
        real tfr
        real tsc
        real frqsc
        integer ierr
        real rl
        real rtrc
        real tf,trns2,stns2,tfr1,tspace
        real lookdist,newtf,oldtf,delta
        real ewrate,nsrate
        PARAMETER (ACD2R = 1.0)
        parameter (ewrate=20.0212*acd2r)
        parameter (nsrate=10.0*acd2r)
        parameter (tnsstep=0.1)
        parameter (slook=10.4*acd2r)
        tfr=0.0
        delr=alf1-alf2
        dscr=sc2-sc1
        rtrc=dscr/ewrate+delr/nsrate
        ierr=6
        if (alf2.gt.alf1.or.sc1.gt.sc2) return
        trns2=tnsstep
        if(mode.eq.0)then
                trns2=2.0*trns2
                stns2=2.0*stns2
        endif
        rl=(delr+rd2vdl7)/stns2
        tf=rl*tsc
        if (iside.eq.0) then
                lookdist=slook-sc0
        else
                lookdist=sc0+slook
        endif
        tfr1=tf-trns2+settim7+rtrc
        if (tfr1.gt.0.0) then
                tsc=tfr/rl
        endif
        return
        end
        subroutine stscan(scr1,elr1,scr2,elr2,iside,mode,tfr)
        call frtime(mode,iside,elr1,elr2,scr1,scr2,tfr,tsc,frqsc,ierr)
        return
        end
      subroutine xfrtime(mode,iside,alf1,alf2,sc1,sc2,tfr,tsc,frqsc,ierr)
        integer mode
        real alf1
        real alf2
        real sc1
        real sc2
        real tfr
        real tsc
        real frqsc
        integer ierr
        real rl
        real rtrc
        integer i,numlooks
        real tf,trns2,stns2,tfr1,tspace
        real lookdist,newtf,oldtf,delta
        real ewrate,nsrate
        PARAMETER (ACD2R = 1.0)
        parameter (ewrate=20.0212*acd2r)
        parameter (nsrate=10.0*acd2r)
        parameter (rad2line=280.0e-6)
        parameter (tnsstep=0.1)
        parameter (slook=10.4*acd2r)
        tfr=0.0
        tsc=0.0
        delr=alf1-alf2
        dscr=sc2-sc1
        rtrc=dscr/ewrate+delr/nsrate
        ierr=6
        if (alf2.gt.alf1.or.sc1.gt.sc2) return
        trns2=tnsstep
        stns2=1120.0e-06
        if(mode.eq.0)then
                tstep=0.1
        elseif(mode.eq.1)then
                tstep=0.2
        elseif(mode.eq.2)then
                tstep=0.4
        elseif(mode.eq.3)then
                tstep=0.2
                trns2=2.0*trns2
                stns2=2.0*stns2
        elseif(mode.eq.4)then
                tstep=0.1
                trns2=2.0*trns2
                stns2=2.0*stns2
        endif
        tline=dscr/rad2line*tstep+trns2
        tsc=tline+trns2
        rd2vdl7=1120.0e-06/4.0
        rl=(delr+rd2vdl7)/stns2
        i=int(rl)
        if (rl-real(i).gt.0.001) i=i+1
        rl=real(i)
        tf=rl*tsc
        sc0=sc1+(sc2-sc1)/2.0
        if (iside.eq.0) then
                lookdist=slook-sc0
        else
                lookdist=sc0+slook
        endif
        settim7=1.6
        sltime7=4.0
        tspace=2.0*settim7+2.0*lookdist/ewrate+sltime7
        oldtf=tf
        delta=0.2
        spclf7=120.0
        do
                numlooks=int(tf/spclf7)
                newtf=oldtf+real(numlooks)*tspace
                tf=newtf
                if(abs(tf-newtf).le.delta)exit
        enddo
        tfr1=tf-trns2+settim7+rtrc
        if (tfr1.gt.0.0) then
                tfr=tfr1
                scntmax7=1.0e06
                if (tfr.gt.scntmax7) then
                        ierr=2
                else
                        ierr=0
                end if
                frqsc=0.5/tsc
                tsc=tfr/rl
        endif
        return
        end
        print *,'pass'
        end
