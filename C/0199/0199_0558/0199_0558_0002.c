#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, unsigned char);
extern unsigned char (*v2) (unsigned short, unsigned char, unsigned char);
extern unsigned int v3 (signed int, unsigned int, signed short, unsigned char);
extern unsigned int (*v4) (signed int, unsigned int, signed short, unsigned char);
void v5 (void);
void (*v6) (void) = v5;
extern unsigned char v9 (unsigned short, unsigned short, signed short);
extern unsigned char (*v10) (unsigned short, unsigned short, signed short);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
unsigned char v13 (signed char, unsigned char, signed short);
unsigned char (*v14) (signed char, unsigned char, signed short) = v13;
extern signed short v15 (signed short, unsigned short);
extern signed short (*v16) (signed short, unsigned short);
extern unsigned short v17 (unsigned int, unsigned int, signed int, signed char);
extern unsigned short (*v18) (unsigned int, unsigned int, signed int, signed char);
extern unsigned int v19 (signed int, unsigned int, signed char);
extern unsigned int (*v20) (signed int, unsigned int, signed char);
extern signed int v21 (void);
extern signed int (*v22) (void);
void v23 (signed short, unsigned short, signed short, unsigned int);
void (*v24) (signed short, unsigned short, signed short, unsigned int) = v23;
unsigned short v25 (signed int, signed char, signed char);
unsigned short (*v26) (signed int, signed char, signed char) = v25;
extern unsigned char v27 (unsigned int, unsigned short, signed int, signed short);
extern unsigned char (*v28) (unsigned int, unsigned short, signed int, signed short);
extern signed char v29 (signed int, signed int);
extern signed char (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v68 = 0;
signed char v67 = -2;
unsigned short v66 = 2;

unsigned short v25 (signed int v69, signed char v70, signed char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 2;
signed int v73 = -3;
signed short v72 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed short v75, unsigned short v76, signed short v77, unsigned int v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned char v81 = 4;
unsigned short v80 = 7;
signed char v79 = 1;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

unsigned char v13 (signed char v82, unsigned char v83, signed short v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned short v87 = 5;
signed short v86 = -2;
unsigned char v85 = 7;
trace++;
switch (trace)
{
case 5: 
return 4;
case 7: 
return v85;
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
signed short v90 = 3;
unsigned int v89 = 1U;
signed short v88 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
