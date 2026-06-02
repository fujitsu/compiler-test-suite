#include <stdlib.h>
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (unsigned char);
extern unsigned char (*v6) (unsigned char);
signed int v7 (unsigned short, signed short, unsigned short);
signed int (*v8) (unsigned short, signed short, unsigned short) = v7;
signed int v9 (signed int, signed short, signed int);
signed int (*v10) (signed int, signed short, signed int) = v9;
extern unsigned short v11 (unsigned char, unsigned short);
extern unsigned short (*v12) (unsigned char, unsigned short);
extern signed char v13 (unsigned int, signed int, unsigned char, signed int);
extern signed char (*v14) (unsigned int, signed int, unsigned char, signed int);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern signed char v17 (unsigned int, signed short, unsigned char, unsigned short);
extern signed char (*v18) (unsigned int, signed short, unsigned char, unsigned short);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed short v21 (unsigned short, signed int, signed char);
extern signed short (*v22) (unsigned short, signed int, signed char);
extern unsigned short v23 (unsigned int, unsigned int, unsigned short, unsigned short);
extern unsigned short (*v24) (unsigned int, unsigned int, unsigned short, unsigned short);
extern void v25 (signed int, unsigned char, signed short, unsigned short);
extern void (*v26) (signed int, unsigned char, signed short, unsigned short);
static signed short v27 (signed short, unsigned short, unsigned int);
static signed short (*v28) (signed short, unsigned short, unsigned int) = v27;
extern unsigned char v29 (signed int, unsigned short, signed char, signed short);
extern unsigned char (*v30) (signed int, unsigned short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v67 = 6;
unsigned short v66 = 0;
unsigned short v65 = 1;

static signed short v27 (signed short v68, unsigned short v69, unsigned int v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 3;
unsigned int v72 = 5U;
signed char v71 = 2;
trace++;
switch (trace)
{
case 5: 
return -1;
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
unsigned short v76 = 4;
unsigned char v75 = 7;
signed int v74 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed int v77, signed short v78, signed int v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 1U;
signed short v81 = 1;
unsigned short v80 = 6;
trace++;
switch (trace)
{
case 4: 
{
signed short v83;
unsigned short v84;
unsigned int v85;
signed short v86;
v83 = v81 + -4;
v84 = v80 - 6;
v85 = v82 + v82;
v86 = v27 (v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 6: 
{
unsigned int v87;
unsigned int v88;
unsigned short v89;
unsigned short v90;
unsigned short v91;
v87 = 7U - 6U;
v88 = 2U + 2U;
v89 = 6 - 1;
v90 = v80 - v80;
v91 = v23 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 8: 
{
unsigned int v92;
unsigned int v93;
unsigned short v94;
unsigned short v95;
unsigned short v96;
v92 = 3U + v82;
v93 = 6U + 7U;
v94 = 0 - 6;
v95 = v80 - 3;
v96 = v23 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 10: 
{
unsigned int v97;
unsigned int v98;
unsigned short v99;
unsigned short v100;
unsigned short v101;
v97 = 6U - v82;
v98 = v82 - 5U;
v99 = v80 + 5;
v100 = v80 - v80;
v101 = v23 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 12: 
return v79;
default: abort ();
}
}
}
}

signed int v7 (unsigned short v102, signed short v103, unsigned short v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 5;
signed short v106 = -3;
unsigned short v105 = 6;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v108;
signed int v109;
unsigned char v110;
signed int v111;
signed char v112;
v108 = 2U - 4U;
v109 = 3 - 2;
v110 = v107 + 3;
v111 = -4 + -1;
v112 = v13 (v108, v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 15: 
return -4;
default: abort ();
}
}
}
}
