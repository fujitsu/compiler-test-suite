#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
signed int v3 (unsigned char, signed int, unsigned short, signed short);
signed int (*v4) (unsigned char, signed int, unsigned short, signed short) = v3;
extern signed int v5 (unsigned char, unsigned short);
extern signed int (*v6) (unsigned char, unsigned short);
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
extern unsigned int v9 (signed short, unsigned short, signed char);
extern unsigned int (*v10) (signed short, unsigned short, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
unsigned short v13 (unsigned char, signed int, unsigned int, unsigned char);
unsigned short (*v14) (unsigned char, signed int, unsigned int, unsigned char) = v13;
extern void v15 (signed int, signed char, signed int);
extern void (*v16) (signed int, signed char, signed int);
extern unsigned char v19 (signed short, signed char, signed char, unsigned short);
extern unsigned char (*v20) (signed short, signed char, signed char, unsigned short);
void v21 (signed char);
void (*v22) (signed char) = v21;
extern signed int v23 (unsigned int, unsigned int, signed short);
extern signed int (*v24) (unsigned int, unsigned int, signed short);
extern signed short v25 (unsigned int, signed int, signed short);
extern signed short (*v26) (unsigned int, signed int, signed short);
signed char v27 (unsigned char, unsigned short);
signed char (*v28) (unsigned char, unsigned short) = v27;
extern unsigned char v29 (signed char, unsigned char, unsigned short, signed short);
extern unsigned char (*v30) (signed char, unsigned char, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v62 = 6U;
unsigned int v61 = 5U;
signed short v60 = -1;

signed char v27 (unsigned char v63, unsigned short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 3U;
signed char v66 = 0;
unsigned short v65 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed char v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = 0;
signed char v70 = 1;
signed char v69 = -4;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v72, signed int v73, unsigned int v74, unsigned char v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = 0;
unsigned short v77 = 2;
unsigned char v76 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v79, signed int v80, unsigned short v81, signed short v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed short v85 = -4;
unsigned int v84 = 7U;
unsigned short v83 = 6;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}
