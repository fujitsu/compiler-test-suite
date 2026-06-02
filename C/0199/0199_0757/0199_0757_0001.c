#include <stdlib.h>
unsigned int v1 (unsigned short, unsigned short, signed int);
unsigned int (*v2) (unsigned short, unsigned short, signed int) = v1;
extern signed char v3 (signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned int);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern unsigned short v7 (signed char, signed short, signed char, unsigned int);
extern unsigned short (*v8) (signed char, signed short, signed char, unsigned int);
extern unsigned char v9 (signed short, unsigned short, signed char, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short, signed char, unsigned short);
extern signed int v11 (unsigned short, signed short);
extern signed int (*v12) (unsigned short, signed short);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern void v15 (signed int, unsigned int, signed short, unsigned short);
extern void (*v16) (signed int, unsigned int, signed short, unsigned short);
static signed short v17 (unsigned int, unsigned short, signed char, unsigned int);
static signed short (*v18) (unsigned int, unsigned short, signed char, unsigned int) = v17;
extern unsigned int v19 (unsigned char, signed short, signed short, signed char);
extern unsigned int (*v20) (unsigned char, signed short, signed short, signed char);
extern unsigned int v21 (signed char, unsigned short);
extern unsigned int (*v22) (signed char, unsigned short);
extern signed char v23 (unsigned char, signed char, signed int, unsigned char);
extern signed char (*v24) (unsigned char, signed char, signed int, unsigned char);
extern unsigned char v25 (signed char);
extern unsigned char (*v26) (signed char);
extern unsigned int v27 (signed int, signed short, signed short);
extern unsigned int (*v28) (signed int, signed short, signed short);
extern signed short v29 (unsigned char);
extern signed short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v68 = -3;
signed int v67 = -4;
signed short v66 = 0;

static signed short v17 (unsigned int v69, unsigned short v70, signed char v71, unsigned int v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 2;
signed short v74 = 2;
unsigned short v73 = 7;
trace++;
switch (trace)
{
case 4: 
return 1;
case 6: 
{
signed char v76;
unsigned short v77;
unsigned int v78;
v76 = v71 - -4;
v77 = v73 + v73;
v78 = v21 (v76, v77);
history[history_index++] = (int)v78;
}
break;
case 16: 
return -2;
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed short v81 = 2;
unsigned int v80 = 4U;
signed int v79 = -1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v82;
unsigned short v83;
signed char v84;
unsigned int v85;
signed short v86;
v82 = 5U + v80;
v83 = 2 - 2;
v84 = -4 - -4;
v85 = v80 + 2U;
v86 = v17 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 5: 
{
unsigned int v87;
unsigned short v88;
signed char v89;
unsigned int v90;
signed short v91;
v87 = v80 - v80;
v88 = 0 + 0;
v89 = 0 + 1;
v90 = 7U + v80;
v91 = v17 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 9: 
{
signed int v92;
signed short v93;
signed short v94;
unsigned int v95;
v92 = v79 + v79;
v93 = v81 + -3;
v94 = -4 - 2;
v95 = v27 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 13: 
return 1;
case 17: 
return -2;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v96, unsigned short v97, signed int v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 3U;
signed int v100 = 2;
signed int v99 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v102;
unsigned char v103;
v102 = v100 - v98;
v103 = v5 (v102);
history[history_index++] = (int)v103;
}
break;
case 11: 
return v101;
case 20: 
return v101;
default: abort ();
}
}
}
}
