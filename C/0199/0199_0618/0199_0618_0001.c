#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, signed char);
extern signed short (*v2) (signed int, unsigned short, signed char);
void v3 (signed int, signed char, signed char, unsigned char);
void (*v4) (signed int, signed char, signed char, unsigned char) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (unsigned int, unsigned int, unsigned int);
extern signed short (*v8) (unsigned int, unsigned int, unsigned int);
extern unsigned int v9 (signed short);
extern unsigned int (*v10) (signed short);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
signed int v13 (signed short);
signed int (*v14) (signed short) = v13;
extern void v15 (unsigned short, unsigned char, signed char);
extern void (*v16) (unsigned short, unsigned char, signed char);
extern unsigned int v17 (signed char, signed char, unsigned short);
extern unsigned int (*v18) (signed char, signed char, unsigned short);
extern unsigned char v19 (signed char, signed char, unsigned int, unsigned short);
extern unsigned char (*v20) (signed char, signed char, unsigned int, unsigned short);
unsigned int v23 (signed char, unsigned short);
unsigned int (*v24) (signed char, unsigned short) = v23;
extern signed int v25 (signed char, unsigned char);
extern signed int (*v26) (signed char, unsigned char);
extern unsigned char v27 (unsigned int, signed int, signed int, unsigned int);
extern unsigned char (*v28) (unsigned int, signed int, signed int, unsigned int);
extern unsigned short v29 (unsigned int, signed int, unsigned int);
extern unsigned short (*v30) (unsigned int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v60 = 3U;
unsigned char v59 = 6;
unsigned char v58 = 1;

unsigned int v23 (signed char v61, unsigned short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 1;
unsigned short v64 = 5;
signed char v63 = 1;
trace++;
switch (trace)
{
case 7: 
return 7U;
default: abort ();
}
}
}
}

signed int v13 (signed short v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 7;
unsigned int v68 = 0U;
signed short v67 = 1;
trace++;
switch (trace)
{
case 1: 
return -3;
default: abort ();
}
}
}
}

void v3 (signed int v70, signed char v71, signed char v72, unsigned char v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = 2;
signed short v75 = -2;
unsigned short v74 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
