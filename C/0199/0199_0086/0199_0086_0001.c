#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed char, signed char);
extern unsigned short (*v2) (unsigned int, signed char, signed char);
extern signed short v3 (unsigned short, signed int);
extern signed short (*v4) (unsigned short, signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (unsigned int, unsigned char, signed char);
extern void (*v10) (unsigned int, unsigned char, signed char);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern signed short v13 (unsigned char, signed int, unsigned short, unsigned int);
extern signed short (*v14) (unsigned char, signed int, unsigned short, unsigned int);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (signed int, unsigned char, unsigned short, signed short);
extern signed char (*v20) (signed int, unsigned char, unsigned short, signed short);
void v21 (signed char, unsigned int, unsigned short);
void (*v22) (signed char, unsigned int, unsigned short) = v21;
extern void v23 (unsigned short, signed short, signed char);
extern void (*v24) (unsigned short, signed short, signed char);
extern unsigned char v25 (signed char, signed int);
extern unsigned char (*v26) (signed char, signed int);
extern void v27 (signed short, unsigned int);
extern void (*v28) (signed short, unsigned int);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v49 = 2;
unsigned int v48 = 2U;
unsigned short v47 = 6;

unsigned short v29 (void)
{
{
for (;;) {
unsigned char v52 = 7;
unsigned short v51 = 1;
unsigned short v50 = 5;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v53;
v53 = v5 ();
history[history_index++] = (int)v53;
}
break;
case 3: 
{
unsigned int v54;
v54 = v5 ();
history[history_index++] = (int)v54;
}
break;
case 15: 
return v51;
default: abort ();
}
}
}
}

void v21 (signed char v55, unsigned int v56, unsigned short v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed int v60 = -3;
signed char v59 = 0;
unsigned char v58 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed int v63 = -2;
signed short v62 = -4;
unsigned char v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
