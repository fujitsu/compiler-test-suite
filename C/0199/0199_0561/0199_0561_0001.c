#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
signed int v7 (signed int);
signed int (*v8) (signed int) = v7;
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned short v15 (signed int, unsigned int);
extern unsigned short (*v16) (signed int, unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v21 (unsigned char, signed char, signed short);
extern unsigned short (*v22) (unsigned char, signed char, signed short);
extern unsigned int v23 (unsigned int, unsigned int, unsigned int, unsigned char);
extern unsigned int (*v24) (unsigned int, unsigned int, unsigned int, unsigned char);
signed int v25 (unsigned short);
signed int (*v26) (unsigned short) = v25;
extern signed short v27 (signed char, unsigned char);
extern signed short (*v28) (signed char, unsigned char);
void v29 (signed short);
void (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v58 = 1;
unsigned char v57 = 5;
unsigned char v56 = 2;

void v29 (signed short v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 7;
unsigned char v61 = 6;
signed int v60 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (unsigned short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
unsigned int v66 = 0U;
unsigned char v65 = 6;
signed int v64 = 3;
trace++;
switch (trace)
{
case 6: 
return v64;
default: abort ();
}
}
}
}

signed int v7 (signed int v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = 2;
signed char v69 = 0;
unsigned short v68 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
