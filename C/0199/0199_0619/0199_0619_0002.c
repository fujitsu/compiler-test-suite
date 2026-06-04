#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (unsigned int, signed int, unsigned short, unsigned int);
extern signed short (*v6) (unsigned int, signed int, unsigned short, unsigned int);
extern unsigned int v7 (unsigned int, signed int, signed int, signed int);
extern unsigned int (*v8) (unsigned int, signed int, signed int, signed int);
unsigned short v9 (unsigned int, unsigned short, signed short, unsigned short);
unsigned short (*v10) (unsigned int, unsigned short, signed short, unsigned short) = v9;
extern signed short v11 (unsigned int, signed char, signed char, unsigned char);
extern signed short (*v12) (unsigned int, signed char, signed char, unsigned char);
extern unsigned short v13 (signed int, signed int, unsigned char);
extern unsigned short (*v14) (signed int, signed int, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
void v17 (unsigned int, signed char, unsigned int);
void (*v18) (unsigned int, signed char, unsigned int) = v17;
void v19 (void);
void (*v20) (void) = v19;
extern signed int v21 (unsigned short, signed char);
extern signed int (*v22) (unsigned short, signed char);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern unsigned char v25 (unsigned short, unsigned int);
extern unsigned char (*v26) (unsigned short, unsigned int);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
unsigned char v29 (unsigned char, signed int, unsigned int, signed short);
unsigned char (*v30) (unsigned char, signed int, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v66 = 2;
signed int v65 = 0;
unsigned short v64 = 1;

unsigned char v29 (unsigned char v67, signed int v68, unsigned int v69, signed short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 2;
signed short v72 = -3;
unsigned char v71 = 2;
trace++;
switch (trace)
{
case 6: 
return v67;
case 8: 
return v67;
case 10: 
return 1;
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
signed short v76 = 0;
signed short v75 = 0;
signed short v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned int v77, signed char v78, unsigned int v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed short v82 = 3;
unsigned short v81 = 2;
unsigned int v80 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v83, unsigned short v84, signed short v85, unsigned short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 1;
unsigned char v88 = 4;
unsigned char v87 = 5;
trace++;
switch (trace)
{
case 3: 
return v84;
default: abort ();
}
}
}
}
