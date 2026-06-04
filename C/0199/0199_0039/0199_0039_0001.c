#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned short, signed int);
extern signed int (*v2) (unsigned short, unsigned short, signed int);
extern signed char v3 (signed char, unsigned int, unsigned int);
extern signed char (*v4) (signed char, unsigned int, unsigned int);
extern signed int v5 (signed char);
extern signed int (*v6) (signed char);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
void v11 (signed short, unsigned char);
void (*v12) (signed short, unsigned char) = v11;
extern unsigned char v13 (unsigned short, unsigned short, signed int, signed char);
extern unsigned char (*v14) (unsigned short, unsigned short, signed int, signed char);
extern signed short v15 (signed char, unsigned int, unsigned short, unsigned short);
extern signed short (*v16) (signed char, unsigned int, unsigned short, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
unsigned short v19 (unsigned char, unsigned int, unsigned short);
unsigned short (*v20) (unsigned char, unsigned int, unsigned short) = v19;
void v21 (signed char, signed int);
void (*v22) (signed char, signed int) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned short v27 (signed int, unsigned char);
extern unsigned short (*v28) (signed int, unsigned char);
extern unsigned short v29 (unsigned char, unsigned short, signed char);
extern unsigned short (*v30) (unsigned char, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v61 = -3;
signed short v60 = -3;
signed char v59 = 0;

void v21 (signed char v62, signed int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 7;
signed short v65 = -1;
signed short v64 = 2;
trace++;
switch (trace)
{
case 5: 
return;
case 7: 
return;
default: abort ();
}
}
}
}

unsigned short v19 (unsigned char v67, unsigned int v68, unsigned short v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = 3;
signed char v71 = 1;
signed char v70 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v73, unsigned char v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 6;
unsigned char v76 = 1;
signed int v75 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
