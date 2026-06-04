#include <stdlib.h>
signed char v3 (unsigned short);
signed char (*v4) (unsigned short) = v3;
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
unsigned int v7 (signed char, unsigned int, unsigned char);
unsigned int (*v8) (signed char, unsigned int, unsigned char) = v7;
void v9 (signed char, unsigned char);
void (*v10) (signed char, unsigned char) = v9;
extern unsigned short v11 (unsigned char, unsigned char, unsigned short, signed char);
extern unsigned short (*v12) (unsigned char, unsigned char, unsigned short, signed char);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern unsigned char v15 (signed short, unsigned char);
extern unsigned char (*v16) (signed short, unsigned char);
extern unsigned char v17 (signed short, signed short);
extern unsigned char (*v18) (signed short, signed short);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned short v21 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned short, unsigned int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed short, signed char, unsigned char);
extern signed int (*v26) (signed short, signed char, unsigned char);
extern signed char v27 (unsigned int, unsigned char);
extern signed char (*v28) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v56 = 7;
signed char v55 = 0;
unsigned short v54 = 4;

unsigned short v13 (void)
{
{
for (;;) {
signed int v59 = 2;
signed int v58 = -2;
signed short v57 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v60, unsigned char v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = 0;
signed char v63 = 1;
unsigned int v62 = 5U;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
default: abort ();
}
}
}
}

unsigned int v7 (signed char v65, unsigned int v66, unsigned char v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 3U;
signed short v69 = 3;
unsigned int v68 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 2;
signed char v73 = 3;
unsigned int v72 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
