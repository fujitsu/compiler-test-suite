#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
void v3 (void);
void (*v4) (void) = v3;
extern signed short v5 (unsigned short, signed short);
extern signed short (*v6) (unsigned short, signed short);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern signed int v9 (unsigned short, signed short, signed int);
extern signed int (*v10) (unsigned short, signed short, signed int);
extern unsigned short v11 (unsigned int, unsigned int, unsigned char, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned int, unsigned char, unsigned char);
extern unsigned short v13 (unsigned char, unsigned char, signed int);
extern unsigned short (*v14) (unsigned char, unsigned char, signed int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
signed short v19 (unsigned int);
signed short (*v20) (unsigned int) = v19;
extern unsigned int v21 (signed short, unsigned char);
extern unsigned int (*v22) (signed short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
void v27 (unsigned int, signed int);
void (*v28) (unsigned int, signed int) = v27;
extern unsigned short v29 (signed int, unsigned int);
extern unsigned short (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v50 = 0;
signed int v49 = -4;
signed char v48 = -1;

void v27 (unsigned int v51, signed int v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed char v55 = 2;
signed int v54 = 1;
signed char v53 = 1;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed short v19 (unsigned int v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 1;
unsigned short v58 = 5;
signed short v57 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
signed short v62 = -3;
signed short v61 = -3;
unsigned char v60 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned int v65 = 5U;
unsigned short v64 = 3;
unsigned char v63 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
