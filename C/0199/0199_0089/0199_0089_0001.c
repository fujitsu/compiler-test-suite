#include <stdlib.h>
void v1 (signed char, signed int, signed short);
void (*v2) (signed char, signed int, signed short) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed char v5 (unsigned short, signed short);
extern signed char (*v6) (unsigned short, signed short);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed char v15 (unsigned char, signed char, unsigned int);
extern signed char (*v16) (unsigned char, signed char, unsigned int);
extern signed short v19 (signed char, unsigned char, signed short, unsigned int);
extern signed short (*v20) (signed char, unsigned char, signed short, unsigned int);
extern unsigned int v21 (unsigned char);
extern unsigned int (*v22) (unsigned char);
extern void v23 (unsigned short, unsigned short);
extern void (*v24) (unsigned short, unsigned short);
unsigned short v25 (unsigned int, signed int, unsigned char);
unsigned short (*v26) (unsigned int, signed int, unsigned char) = v25;
extern signed char v27 (unsigned int, unsigned short, unsigned char, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short, unsigned char, unsigned short);
extern unsigned int v29 (signed char, unsigned char);
extern unsigned int (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v73 = 3U;
unsigned short v72 = 7;
unsigned char v71 = 4;

unsigned short v25 (unsigned int v74, signed int v75, unsigned char v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 6;
unsigned short v78 = 5;
unsigned char v77 = 3;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v80;
v80 = v9 ();
history[history_index++] = (int)v80;
}
break;
case 12: 
return v78;
default: abort ();
}
}
}
}

void v1 (signed char v81, signed int v82, signed short v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 4;
signed char v85 = -4;
signed char v84 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v87;
v87 = v13 ();
history[history_index++] = (int)v87;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
