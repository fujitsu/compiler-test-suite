#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char);
extern unsigned char (*v2) (unsigned short, signed char);
extern signed short v3 (signed int, unsigned char, signed int, unsigned char);
extern signed short (*v4) (signed int, unsigned char, signed int, unsigned char);
extern signed short v5 (signed char, signed short);
extern signed short (*v6) (signed char, signed short);
extern unsigned short v7 (signed int);
extern unsigned short (*v8) (signed int);
extern signed char v9 (signed int, unsigned short, signed char);
extern signed char (*v10) (signed int, unsigned short, signed char);
void v11 (signed int, signed char);
void (*v12) (signed int, signed char) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
void v15 (void);
void (*v16) (void) = v15;
extern unsigned short v17 (unsigned char, signed int, unsigned char, signed int);
extern unsigned short (*v18) (unsigned char, signed int, unsigned char, signed int);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
unsigned int v21 (signed short, signed char);
unsigned int (*v22) (signed short, signed char) = v21;
extern void v23 (signed short, unsigned short, signed int);
extern void (*v24) (signed short, unsigned short, signed int);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern unsigned char v29 (signed short);
extern unsigned char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v62 = 4;
signed short v61 = 1;
signed short v60 = -2;

unsigned int v21 (signed short v63, signed char v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 3;
unsigned short v66 = 6;
unsigned short v65 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
signed short v70 = -1;
signed short v69 = 0;
signed char v68 = 3;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

void v11 (signed int v71, signed char v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 4;
unsigned short v74 = 4;
unsigned short v73 = 6;
trace++;
switch (trace)
{
case 5: 
{
signed short v76;
unsigned short v77;
signed int v78;
v76 = 3 - -2;
v77 = v74 + 6;
v78 = v71 + v71;
v23 (v76, v77, v78);
}
break;
case 7: 
return;
default: abort ();
}
}
}
}
