#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern void v3 (void);
extern void (*v4) (void);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed char v11 (unsigned short, signed int, unsigned short);
extern signed char (*v12) (unsigned short, signed int, unsigned short);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed short v19 (signed char, unsigned char, unsigned char);
extern signed short (*v20) (signed char, unsigned char, unsigned char);
unsigned short v21 (unsigned short, signed char, unsigned int);
unsigned short (*v22) (unsigned short, signed char, unsigned int) = v21;
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed short v25 (void);
extern signed short (*v26) (void);
static unsigned int v27 (signed short, unsigned char, signed int, signed char);
static unsigned int (*v28) (signed short, unsigned char, signed int, signed char) = v27;
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v46 = -1;
unsigned char v45 = 5;
signed short v44 = 0;

static unsigned int v27 (signed short v47, unsigned char v48, signed int v49, signed char v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = 1;
signed int v52 = -1;
unsigned char v51 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed short v54;
unsigned char v55;
signed int v56;
signed char v57;
unsigned int v58;
v54 = v47 + 2;
v55 = v48 + 7;
v56 = 3 - v49;
v57 = v50 - 3;
v58 = v27 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 2: 
{
signed short v59;
unsigned char v60;
signed int v61;
signed char v62;
unsigned int v63;
v59 = -1 - 0;
v60 = v48 - v48;
v61 = v49 - v49;
v62 = 3 + v50;
v63 = v27 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 3: 
{
signed short v64;
unsigned char v65;
signed int v66;
signed char v67;
unsigned int v68;
v64 = v53 + v47;
v65 = 1 + v51;
v66 = v52 + v52;
v67 = v50 + v50;
v68 = v27 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 4: 
{
signed short v69;
unsigned char v70;
signed int v71;
signed char v72;
unsigned int v73;
v69 = v47 - 1;
v70 = 6 - v48;
v71 = v52 - -1;
v72 = v50 - v50;
v73 = v27 (v69, v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 5: 
{
signed short v74;
unsigned char v75;
signed int v76;
signed char v77;
unsigned int v78;
v74 = v47 - v53;
v75 = v48 - v51;
v76 = v49 - v52;
v77 = v50 - v50;
v78 = v27 (v74, v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 6: 
return 1U;
case 7: 
return 3U;
case 8: 
return 3U;
case 9: 
return 6U;
case 10: 
return 4U;
case 11: 
return 3U;
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v79, signed char v80, unsigned int v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 1U;
unsigned int v83 = 4U;
unsigned char v82 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed int v87 = -4;
unsigned char v86 = 7;
unsigned char v85 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
unsigned char v90 = 0;
signed short v89 = 0;
signed char v88 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v91;
unsigned char v92;
signed int v93;
signed char v94;
unsigned int v95;
v91 = 3 + v89;
v92 = v90 - v90;
v93 = -4 + 1;
v94 = -3 - v88;
v95 = v27 (v91, v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
