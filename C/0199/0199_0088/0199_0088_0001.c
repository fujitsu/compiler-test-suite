#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed int v3 (unsigned int, signed int, unsigned char);
extern signed int (*v4) (unsigned int, signed int, unsigned char);
extern signed char v5 (signed int, unsigned int);
extern signed char (*v6) (signed int, unsigned int);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
unsigned char v9 (signed int);
unsigned char (*v10) (signed int) = v9;
extern void v11 (unsigned int, unsigned short, unsigned short);
extern void (*v12) (unsigned int, unsigned short, unsigned short);
void v13 (signed short, unsigned int, signed short);
void (*v14) (signed short, unsigned int, signed short) = v13;
signed int v15 (unsigned short, unsigned char);
signed int (*v16) (unsigned short, unsigned char) = v15;
void v17 (signed char, unsigned char);
void (*v18) (signed char, unsigned char) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned int v27 (signed short, unsigned char, signed short);
extern unsigned int (*v28) (signed short, unsigned char, signed short);
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v53 = 0;
unsigned short v52 = 3;
signed char v51 = -3;

void v17 (signed char v54, unsigned char v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = 2;
unsigned short v57 = 6;
unsigned int v56 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned short v59, unsigned char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 6;
signed short v62 = 0;
signed int v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed short v64, unsigned int v65, signed short v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 1;
unsigned int v68 = 5U;
signed int v67 = -1;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

unsigned char v9 (signed int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 1;
unsigned char v72 = 6;
unsigned char v71 = 5;
trace++;
switch (trace)
{
case 3: 
return v71;
default: abort ();
}
}
}
}
