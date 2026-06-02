#include <stdlib.h>
extern void v1 (unsigned int, unsigned short, signed char);
extern void (*v2) (unsigned int, unsigned short, signed char);
extern unsigned int v3 (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned int v5 (signed int, unsigned short, signed int);
extern unsigned int (*v6) (signed int, unsigned short, signed int);
extern void v7 (void);
extern void (*v8) (void);
unsigned char v11 (unsigned char);
unsigned char (*v12) (unsigned char) = v11;
void v13 (unsigned char);
void (*v14) (unsigned char) = v13;
signed char v15 (signed char, unsigned int);
signed char (*v16) (signed char, unsigned int) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern void v23 (signed int, unsigned int, unsigned int);
extern void (*v24) (signed int, unsigned int, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (signed short, signed short);
extern unsigned short (*v28) (signed short, signed short);
extern signed short v29 (unsigned char, unsigned int, unsigned int, signed short);
extern signed short (*v30) (unsigned char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v61 = 2;
signed char v60 = -1;
unsigned int v59 = 0U;

signed char v15 (signed char v62, unsigned int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 7;
unsigned int v65 = 1U;
unsigned char v64 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 6U;
unsigned char v69 = 6;
unsigned char v68 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v71;
unsigned int v72;
unsigned int v73;
signed short v74;
signed short v75;
v71 = v68 + v69;
v72 = 7U + 6U;
v73 = 5U + 6U;
v74 = 0 + 0;
v75 = v29 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 3: 
return;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned char v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 1;
signed short v78 = -4;
unsigned int v77 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
