#include <stdlib.h>
extern signed char v3 (unsigned char, signed short);
extern signed char (*v4) (unsigned char, signed short);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
void v9 (signed int);
void (*v10) (signed int) = v9;
extern unsigned char v11 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned char (*v12) (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned char v13 (signed char, unsigned int, signed int, unsigned short);
extern unsigned char (*v14) (signed char, unsigned int, signed int, unsigned short);
extern unsigned short v15 (signed int, signed short, signed char);
extern unsigned short (*v16) (signed int, signed short, signed char);
unsigned char v17 (unsigned char, unsigned short, signed int);
unsigned char (*v18) (unsigned char, unsigned short, signed int) = v17;
extern unsigned char v19 (signed char);
extern unsigned char (*v20) (signed char);
extern signed int v21 (void);
extern signed int (*v22) (void);
unsigned short v23 (signed short, signed short, unsigned char);
unsigned short (*v24) (signed short, signed short, unsigned char) = v23;
void v25 (void);
void (*v26) (void) = v25;
extern void v27 (unsigned char, unsigned short, signed short);
extern void (*v28) (unsigned char, unsigned short, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v67 = 2;
signed short v66 = 1;
unsigned char v65 = 5;

void v25 (void)
{
{
for (;;) {
unsigned char v70 = 4;
signed int v69 = -2;
unsigned char v68 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (signed short v71, signed short v72, unsigned char v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 6;
signed int v75 = 3;
unsigned char v74 = 4;
trace++;
switch (trace)
{
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned char v17 (unsigned char v77, unsigned short v78, signed int v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 3U;
signed short v81 = 0;
signed char v80 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 7;
signed short v85 = 1;
signed int v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
