#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned char (*v2) (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
unsigned int v5 (unsigned short, signed int, signed int);
unsigned int (*v6) (unsigned short, signed int, signed int) = v5;
extern unsigned short v7 (signed short, signed short, unsigned char);
extern unsigned short (*v8) (signed short, signed short, unsigned char);
extern unsigned char v9 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned char (*v10) (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned short v11 (unsigned int, unsigned short, signed int);
extern unsigned short (*v12) (unsigned int, unsigned short, signed int);
extern signed int v13 (unsigned char, signed short, signed char);
extern signed int (*v14) (unsigned char, signed short, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern void v19 (unsigned int, unsigned char, signed short, unsigned int);
extern void (*v20) (unsigned int, unsigned char, signed short, unsigned int);
extern unsigned short v21 (unsigned int, unsigned char);
extern unsigned short (*v22) (unsigned int, unsigned char);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern void v25 (signed short, unsigned int);
extern void (*v26) (signed short, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v68 = 1U;
signed char v67 = 1;
signed short v66 = 3;

unsigned short v29 (void)
{
{
for (;;) {
signed int v71 = 2;
signed char v70 = 1;
unsigned int v69 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
unsigned short v74 = 0;
signed short v73 = 2;
signed char v72 = -4;
trace++;
switch (trace)
{
case 4: 
return v73;
case 6: 
{
unsigned int v75;
unsigned short v76;
signed int v77;
unsigned short v78;
v75 = 4U + 6U;
v76 = 3 + 2;
v77 = 1 - -3;
v78 = v11 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 10: 
{
signed short v79;
unsigned int v80;
v79 = 2 + 0;
v80 = 0U + 5U;
v25 (v79, v80);
}
break;
case 12: 
return 1;
case 16: 
return v73;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v81, signed int v82, signed int v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -2;
unsigned char v85 = 7;
unsigned short v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
