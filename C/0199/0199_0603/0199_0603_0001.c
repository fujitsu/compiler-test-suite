#include <stdlib.h>
extern signed char v1 (unsigned char, signed int, unsigned short, signed int);
extern signed char (*v2) (unsigned char, signed int, unsigned short, signed int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (unsigned int);
extern signed short (*v6) (unsigned int);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
unsigned char v9 (unsigned int);
unsigned char (*v10) (unsigned int) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed int v13 (signed char, unsigned short, unsigned char);
extern signed int (*v14) (signed char, unsigned short, unsigned char);
extern signed char v15 (unsigned int, signed int, unsigned char);
extern signed char (*v16) (unsigned int, signed int, unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
static unsigned short v19 (unsigned short, unsigned int, unsigned short);
static unsigned short (*v20) (unsigned short, unsigned int, unsigned short) = v19;
extern signed short v21 (signed int, signed char);
extern signed short (*v22) (signed int, signed char);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
static unsigned short v29 (unsigned char, unsigned short, signed char);
static unsigned short (*v30) (unsigned char, unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v54 = 1;
signed short v53 = -3;
unsigned char v52 = 7;

static unsigned short v29 (unsigned char v55, unsigned short v56, signed char v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = 3;
signed char v59 = 1;
signed short v58 = 1;
trace++;
switch (trace)
{
case 2: 
return v56;
case 4: 
return v56;
case 6: 
{
unsigned short v61;
unsigned int v62;
unsigned short v63;
unsigned short v64;
v61 = v56 - 4;
v62 = 0U + 4U;
v63 = 5 - 2;
v64 = v19 (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 8: 
return 2;
case 10: 
{
unsigned short v65;
unsigned int v66;
unsigned short v67;
unsigned short v68;
v65 = 0 + 2;
v66 = 1U + 7U;
v67 = 0 + 4;
v68 = v19 (v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

unsigned char v25 (unsigned char v69, signed int v70, signed short v71, unsigned short v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = -2;
unsigned int v74 = 1U;
unsigned short v73 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v76;
unsigned short v77;
signed char v78;
unsigned short v79;
v76 = v69 - v69;
v77 = 0 + v72;
v78 = 0 + -1;
v79 = v29 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 3: 
{
unsigned char v80;
unsigned short v81;
signed char v82;
unsigned short v83;
v80 = 4 + v69;
v81 = 5 + v72;
v82 = -3 - -4;
v83 = v29 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 5: 
{
unsigned char v84;
unsigned short v85;
signed char v86;
unsigned short v87;
v84 = 4 - 1;
v85 = v73 + 7;
v86 = -2 - 1;
v87 = v29 (v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 9: 
{
unsigned char v88;
unsigned short v89;
signed char v90;
unsigned short v91;
v88 = v69 - 4;
v89 = 0 - v72;
v90 = 3 - 0;
v91 = v29 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 13: 
return v69;
default: abort ();
}
}
}
}

static unsigned short v19 (unsigned short v92, unsigned int v93, unsigned short v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 2U;
signed short v96 = 1;
signed char v95 = 1;
trace++;
switch (trace)
{
case 7: 
return v94;
case 11: 
return v94;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 6;
unsigned char v100 = 0;
signed short v99 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
