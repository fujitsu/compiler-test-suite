#include <stdlib.h>
unsigned int v3 (unsigned short, signed int, unsigned int);
unsigned int (*v4) (unsigned short, signed int, unsigned int) = v3;
extern signed char v5 (unsigned char, signed short, unsigned char);
extern signed char (*v6) (unsigned char, signed short, unsigned char);
extern signed int v9 (unsigned char, unsigned short, unsigned short);
extern signed int (*v10) (unsigned char, unsigned short, unsigned short);
extern signed short v11 (signed char, unsigned short, unsigned char, unsigned short);
extern signed short (*v12) (signed char, unsigned short, unsigned char, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (signed short, unsigned short, unsigned short, signed short);
extern signed int (*v16) (signed short, unsigned short, unsigned short, signed short);
signed int v17 (unsigned int, unsigned short, signed short, unsigned int);
signed int (*v18) (unsigned int, unsigned short, signed short, unsigned int) = v17;
unsigned short v19 (signed int, signed short, signed int, unsigned int);
unsigned short (*v20) (signed int, signed short, signed int, unsigned int) = v19;
unsigned short v21 (unsigned int, signed char, signed int);
unsigned short (*v22) (unsigned int, signed char, signed int) = v21;
extern signed char v23 (signed int, unsigned int, unsigned short);
extern signed char (*v24) (signed int, unsigned int, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (unsigned int, signed char, unsigned char, unsigned int);
extern void (*v28) (unsigned int, signed char, unsigned char, unsigned int);
unsigned char v29 (unsigned char, unsigned int, signed short);
unsigned char (*v30) (unsigned char, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v65 = 0;
unsigned char v64 = 7;
unsigned char v63 = 0;

unsigned char v29 (unsigned char v66, unsigned int v67, signed short v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = 0;
unsigned char v70 = 6;
unsigned char v69 = 0;
trace++;
switch (trace)
{
case 6: 
return 1;
default: abort ();
}
}
}
}

unsigned short v21 (unsigned int v72, signed char v73, signed int v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 6U;
signed char v76 = 3;
unsigned char v75 = 7;
trace++;
switch (trace)
{
case 4: 
return 6;
case 10: 
{
unsigned int v78;
signed char v79;
unsigned char v80;
unsigned int v81;
v78 = 6U - v77;
v79 = v76 + v76;
v80 = v75 - 7;
v81 = 7U + v72;
v27 (v78, v79, v80, v81);
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}

unsigned short v19 (signed int v82, signed short v83, signed int v84, unsigned int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 6;
unsigned char v87 = 1;
signed char v86 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned int v89, unsigned short v90, signed short v91, unsigned int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 3U;
unsigned char v94 = 1;
signed int v93 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v96, signed int v97, unsigned int v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -2;
unsigned int v100 = 4U;
unsigned char v99 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
