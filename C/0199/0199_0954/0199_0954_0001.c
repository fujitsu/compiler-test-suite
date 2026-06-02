#include <stdlib.h>
extern signed int v1 (unsigned char, signed short);
extern signed int (*v2) (unsigned char, signed short);
extern unsigned int v3 (signed int, unsigned short, signed char, unsigned char);
extern unsigned int (*v4) (signed int, unsigned short, signed char, unsigned char);
extern void v5 (signed short, signed short, unsigned char);
extern void (*v6) (signed short, signed short, unsigned char);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed int v9 (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed int (*v10) (unsigned int, unsigned char, unsigned char, unsigned short);
unsigned short v11 (unsigned char, unsigned char, signed int);
unsigned short (*v12) (unsigned char, unsigned char, signed int) = v11;
void v13 (void);
void (*v14) (void) = v13;
extern unsigned short v15 (signed char, signed int, unsigned int, unsigned short);
extern unsigned short (*v16) (signed char, signed int, unsigned int, unsigned short);
signed char v17 (unsigned int, unsigned char, unsigned short, signed short);
signed char (*v18) (unsigned int, unsigned char, unsigned short, signed short) = v17;
unsigned char v19 (signed int, unsigned char);
unsigned char (*v20) (signed int, unsigned char) = v19;
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
extern unsigned short v23 (unsigned short);
extern unsigned short (*v24) (unsigned short);
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
extern signed short v27 (unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, unsigned char);
extern unsigned short v29 (signed char, unsigned int);
extern unsigned short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v56 = -1;
unsigned int v55 = 6U;
unsigned int v54 = 3U;

unsigned char v19 (signed int v57, unsigned char v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 2;
unsigned short v60 = 4;
unsigned char v59 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned int v62, unsigned char v63, unsigned short v64, signed short v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 0;
signed char v67 = -1;
unsigned short v66 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
signed char v71 = 0;
signed char v70 = -1;
unsigned char v69 = 0;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v72;
unsigned char v73;
signed short v74;
v72 = 2 - 3;
v73 = 7 + v69;
v74 = v27 (v72, v73);
history[history_index++] = (int)v74;
}
break;
case 10: 
{
unsigned short v75;
unsigned char v76;
signed short v77;
v75 = 0 - 7;
v76 = v69 - v69;
v77 = v27 (v75, v76);
history[history_index++] = (int)v77;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v78, unsigned char v79, signed int v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 7U;
signed short v82 = 3;
unsigned short v81 = 3;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v84;
unsigned char v85;
signed short v86;
v84 = v81 + 3;
v85 = v78 - v79;
v86 = v27 (v84, v85);
history[history_index++] = (int)v86;
}
break;
case 4: 
return 6;
default: abort ();
}
}
}
}
