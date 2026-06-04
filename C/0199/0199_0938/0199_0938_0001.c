#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed char v3 (signed short, signed short);
extern signed char (*v4) (signed short, signed short);
extern unsigned short v5 (unsigned int, unsigned short, signed short);
extern unsigned short (*v6) (unsigned int, unsigned short, signed short);
unsigned int v7 (signed char, signed int, signed int, unsigned int);
unsigned int (*v8) (signed char, signed int, signed int, unsigned int) = v7;
extern unsigned int v9 (unsigned int, unsigned char, signed int, unsigned char);
extern unsigned int (*v10) (unsigned int, unsigned char, signed int, unsigned char);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (signed short, signed char);
extern unsigned int (*v14) (signed short, signed char);
extern unsigned short v15 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v16) (unsigned char, unsigned char, unsigned int);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (signed char);
extern unsigned char (*v20) (signed char);
void v21 (unsigned short);
void (*v22) (unsigned short) = v21;
unsigned char v23 (unsigned short, unsigned char, signed char);
unsigned char (*v24) (unsigned short, unsigned char, signed char) = v23;
extern signed short v25 (signed short, unsigned int, unsigned short);
extern signed short (*v26) (signed short, unsigned int, unsigned short);
extern signed int v27 (signed char, unsigned short, unsigned short, signed char);
extern signed int (*v28) (signed char, unsigned short, unsigned short, signed char);
extern signed int v29 (unsigned int, unsigned int, unsigned int, signed char);
extern signed int (*v30) (unsigned int, unsigned int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v56 = 3;
signed int v55 = -4;
unsigned int v54 = 6U;

unsigned char v23 (unsigned short v57, unsigned char v58, signed char v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 6U;
signed char v61 = -4;
signed short v60 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = 0;
signed int v65 = -1;
unsigned int v64 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed char v67, signed int v68, signed int v69, unsigned int v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = -4;
signed short v72 = -3;
signed char v71 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed short v74;
signed short v75;
signed char v76;
v74 = v72 + 0;
v75 = 0 - v72;
v76 = v3 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 7: 
{
unsigned int v77;
unsigned char v78;
signed int v79;
unsigned char v80;
unsigned int v81;
v77 = v70 - 0U;
v78 = 1 + 0;
v79 = -2 + 1;
v80 = 7 - 0;
v81 = v9 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 13: 
return 3U;
default: abort ();
}
}
}
}
