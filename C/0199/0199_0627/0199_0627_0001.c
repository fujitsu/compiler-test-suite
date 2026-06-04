#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned int);
extern unsigned short (*v2) (signed char, unsigned int);
extern signed int v3 (unsigned char, signed char);
extern signed int (*v4) (unsigned char, signed char);
signed int v5 (signed short, unsigned char, signed short);
signed int (*v6) (signed short, unsigned char, signed short) = v5;
signed char v7 (signed int, signed short);
signed char (*v8) (signed int, signed short) = v7;
extern unsigned char v9 (signed char, signed int);
extern unsigned char (*v10) (signed char, signed int);
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
extern void v13 (unsigned short, unsigned short, signed char);
extern void (*v14) (unsigned short, unsigned short, signed char);
unsigned char v15 (signed char);
unsigned char (*v16) (signed char) = v15;
extern void v17 (void);
extern void (*v18) (void);
void v19 (void);
void (*v20) (void) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern unsigned short v27 (unsigned char, signed char);
extern unsigned short (*v28) (unsigned char, signed char);
extern signed int v29 (unsigned short, signed short, unsigned short, signed short);
extern signed int (*v30) (unsigned short, signed short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v60 = 6;
unsigned short v59 = 5;
signed short v58 = 0;

void v19 (void)
{
{
for (;;) {
signed short v63 = -1;
unsigned short v62 = 4;
signed short v61 = 2;
trace++;
switch (trace)
{
case 5: 
return;
default: abort ();
}
}
}
}

unsigned char v15 (signed char v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 7;
unsigned int v66 = 2U;
signed int v65 = 0;
trace++;
switch (trace)
{
case 3: 
return 1;
default: abort ();
}
}
}
}

signed char v7 (signed int v68, signed short v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = -4;
unsigned char v71 = 3;
unsigned short v70 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v73, unsigned char v74, signed short v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 2;
signed char v77 = -1;
unsigned int v76 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
