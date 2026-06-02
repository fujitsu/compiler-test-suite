#include <stdlib.h>
extern signed char v3 (signed short, signed char);
extern signed char (*v4) (signed short, signed char);
extern unsigned int v5 (unsigned int, signed char, signed short, signed short);
extern unsigned int (*v6) (unsigned int, signed char, signed short, signed short);
extern unsigned short v7 (unsigned int, unsigned short, unsigned char, unsigned char);
extern unsigned short (*v8) (unsigned int, unsigned short, unsigned char, unsigned char);
void v9 (void);
void (*v10) (void) = v9;
extern unsigned short v11 (signed short, signed short, signed short, unsigned short);
extern unsigned short (*v12) (signed short, signed short, signed short, unsigned short);
extern signed int v13 (signed char, unsigned int, unsigned char);
extern signed int (*v14) (signed char, unsigned int, unsigned char);
unsigned short v15 (signed int);
unsigned short (*v16) (signed int) = v15;
extern signed int v19 (signed short, unsigned short);
extern signed int (*v20) (signed short, unsigned short);
extern unsigned char v21 (unsigned int, signed short, signed char);
extern unsigned char (*v22) (unsigned int, signed short, signed char);
extern signed char v23 (signed int, unsigned int, unsigned int, unsigned short);
extern signed char (*v24) (signed int, unsigned int, unsigned int, unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
signed char v27 (signed short, unsigned short, unsigned short, unsigned short);
signed char (*v28) (signed short, unsigned short, unsigned short, unsigned short) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v62 = -2;
unsigned char v61 = 5;
signed int v60 = -2;

signed char v27 (signed short v63, unsigned short v64, unsigned short v65, unsigned short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 1;
unsigned char v68 = 5;
signed short v67 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 5;
signed short v72 = -4;
unsigned char v71 = 4;
trace++;
switch (trace)
{
case 6: 
return 2;
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned short v76 = 7;
signed char v75 = 1;
signed int v74 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
